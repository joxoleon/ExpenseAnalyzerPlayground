//
//  Record.swift
//  EurobankExpenseTracker
//
//  Created by Jovan Radivojsa on 17.2.23..
//

import Foundation

class Record: Codable {
    
    // MARK: - Properties
    
    let expenseDate: String
    let currencyDate: String
    let transactionCode: String
    var description: String
    let expenseAmount: String
    let newState: String
    
    // MARK: - Initialization
    
    init(expenseDate: String, currencyDate: String, transactionCode: String, description: String, expenseAmount: String, newState: String) {
        self.expenseDate = expenseDate
        self.currencyDate = currencyDate
        self.transactionCode = transactionCode
        self.description = description
        self.expenseAmount = expenseAmount
        self.newState = newState
    }
    
    // MARK: - Utility properties
    
    lazy var descLowercased: String = {
        description.lowercased()
    }()
    
    lazy var amount: Double = {
        expenseAmount.bankStringToDouble
    }()
    
    lazy var date: TimeInterval = {
        expenseDate.bankDateToTimeInterval
    }()
}
