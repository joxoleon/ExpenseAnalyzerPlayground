//
//  DataReader.swift
//  ExtractBank
//
//  Created by Jovan Radivojsa on 8.2.23..
//

import Foundation

class DataReader {
    
    // MARK: - Types
    
    enum ReaderState {
        case selectAccount
        case readInitialState
        case readExpenseRecords
        case finishedAccount
    }
    
    // MARK: - Singleton properties
    
    static let shared = DataReader()
    private init() {
        
    }
    
    // MARK: - Properties
    
    var currentState = ReaderState.selectAccount
    var accounts: [String: Account] = [:]
    var currentAccount: Account?
    var currentExpense: Record?
    // MARK: - Public methods
    
    func readDataFromFile() {
        let projectDirectory = URL(fileURLWithPath: #file).deletingLastPathComponent().deletingLastPathComponent()
        let fileURL = projectDirectory.appendingPathComponent("Resources/Izvodi.txt")
        
        do {
            let fileContent = try String(contentsOf: fileURL, encoding: .utf8)
            let lines = fileContent.components(separatedBy: .newlines)
            
            for line in lines {
                handle(line: line)
            }
        } catch {
            print("Error: \(error)")
        }
    }
    
    func handle(line: String) {
        let t = line.components(separatedBy: .whitespaces)
        let tokens = t.filter { !$0.isEmpty }
        guard tokens.count > 0 else { return }
        
        switch currentState {
        case .selectAccount:
            handleSelectAccount(tokens)
        case .readInitialState:
            handleReadInitialState(tokens)
        case .readExpenseRecords:
            handleReadExpenseRecords(tokens)
        case .finishedAccount:
            handleFinishedAccount(tokens)
        }
    }

    func handleSelectAccount(_ tokens: [String]) {
        guard tokens.count == 2 else { return }
        if tokens[0] == "RACUN" {
            let accNum = tokens[1]
            // Select an account
            if let account = accounts[accNum] {
                // If the account exists - set it to selected
                currentAccount = account
            } else {
                let account = Account(accountNumber: accNum)
                accounts[accNum] = account
                currentAccount = account
            }
            currentState = .readInitialState
        }
    }

    func handleReadInitialState(_ tokens: [String]) {
        guard tokens.count == 3 else { return }
        if tokens.contains("POCETNO"), tokens.contains("STANJE") {
            let value = tokens[2]
            currentAccount?.accountState = value
            currentState = .readExpenseRecords
        }
    }
    func handleReadExpenseRecords(_ tokens: [String]) {
        // Read initial record
        if tokens.count >= 6 {
            addExpenseRecordToCurrentAccount(tokens)
            return
        }
        if tokens.contains("KRAJNJE"), tokens.contains("STANJE") {
            handleFinishedAccount(tokens)
            return
        }
        if tokens.count >= 1, tokens.count < 6 {
            let desc = " " + tokens.joined(separator: " ")
            currentExpense?.description.append(desc)
            return
        }
    }
    func handleFinishedAccount(_ tokens: [String]) {
        if tokens.contains("KRAJNJE"), tokens.contains("STANJE") {
            currentAccount?.accountState = tokens[2]
            currentState = .selectAccount
            currentAccount = nil
            currentExpense = nil
        }
    }

    func addExpenseRecordToCurrentAccount(_ tokens: [String]) {
        let expenseDate: String = tokens[0]
        let currencyDate: String = tokens[1]
        let transactionCode: String = tokens[2]
        let descArray = Array(tokens[3...(tokens.count - 3)])
        var description: String = descArray.joined(separator: " ")
        let expenseAmount: String = tokens[tokens.count - 2]
        let newState: String = tokens[tokens.count - 1]
        
        let record = Record(expenseDate: expenseDate, currencyDate: currencyDate, transactionCode: transactionCode, description: description, expenseAmount: expenseAmount, newState: newState)
        currentAccount?.records.append(record)
        currentExpense = record
    }
}
