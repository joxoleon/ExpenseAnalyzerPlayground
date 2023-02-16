//
//  BankData + Extensions.swift
//  ExtractBank
//
//  Created by Jovan Radivojsa on 12.2.23.
//

import Foundation

extension Account {
    func print() {
        Swift.print("\n\n************************************************\n\n")
        Swift.print("Account number: \(accountNumber) \n\n")
        for r in records {
            Swift.print(r.expenseDescription)
        }
        Swift.print("\n\n************************************************\n\n")
    }
}

extension Record {
    var expenseDescription: String {
        return "\(expenseDate)   \(currencyDate)   \(expenseAmount)   \(newState)   \(description)"
    }
}
