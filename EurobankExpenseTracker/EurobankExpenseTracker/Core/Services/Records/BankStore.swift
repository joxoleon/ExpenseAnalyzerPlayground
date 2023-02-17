//
//  BankStore.swift
//  EurobankExpenseTracker
//
//  Created by Jovan Radivojsa on 17.2.23..
//

import Foundation

fileprivate enum BankStoreConstants {
    static let bankFileName = "bankData.json"
}

class BankStore {
    
    // MARK: - Types
    
    class BankData: Codable {
        let accounts: [String: Account] // Account number to account
    }
    
    // MARK: - Singleton
    
    private init() {}
    static let shared = BankStore()
    
    // MARK: - Public properties
    
}
