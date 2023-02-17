//
//  TestDescriptions.swift
//  ExtractBank
//
//  Created by Jovan Radivojsa on 17.2.23..
//

import Foundation

func testDescriptions() {
    let descriptionFileName = "transactionDescriptions.json"
    Bank.shared.loadFromStorage()
    let descriptions = Bank.shared.allExpenses.compactMap { $0.description }
    
    StorageManager.shared.save(codable: descriptions, to: descriptionFileName)
}
