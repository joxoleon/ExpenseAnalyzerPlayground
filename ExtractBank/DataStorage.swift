//
//  DataStorage.swift
//  ExtractBank
//
//  Created by Jovan Radivojsa on 8.2.23..
//

import Foundation

class Bank {
    
    // MARK: - Singleton properties
    
    static var shared: Bank = Bank()
    private init() {}
    
    // MARK: - Properties
    var accounts: [String: Account] = [:]

    // MARK: - Redundant properties
    
    lazy var allExpenses: [Record] = {
        var expenses: [Record] = []
        for acc in accounts.values {
            expenses.append(contentsOf: acc.records)
        }
        return expenses
    }()
    
    // MARK: - Public methods
    
    public func initialize() {
        DataReader.shared.readDataFromFile()
        accounts = DataReader.shared.accounts
    }
    
    func getExpenses(for tag: Tag) -> [Record] {
        return tag.filter(expenses: allExpenses)
    }
    
    func loadFromStorage() {
//        print("load from storage - first clear allExpenses")
//        allExpenses = []
//        print("all expenses count: \(allExpenses.count)")
//        let expenses: AllExpenses = StorageManager.shared.load(from: "allExpenses.json") ?? AllExpenses(allExpenses: [])
//        self.allExpenses = expenses.allExpenses
//        print("all expenses count: \(allExpenses.count)")
        
        let accountData: AccountData = StorageManager.shared.load(from: "accountData.json") ?? AccountData(accounts: [:])
        self.accounts = accountData.accounts
        print("all expenses count: \(allExpenses.count)")
        
    }

    func saveToStorage() {
//        // Save all expenses
//        let allExpenses = AllExpenses(allExpenses: allExpenses)
//        StorageManager.shared.save(codable: allExpenses, to: "allExpenses.json")
    
        // Save account data
        let accountData = AccountData(accounts: accounts)
        StorageManager.shared.save(codable: accountData, to: "accountData.json")
    }
}

struct AllExpenses: Codable {
    let allExpenses: [Record]
}

struct AccountData : Codable {
    var accounts : [String: Account]
    
}
