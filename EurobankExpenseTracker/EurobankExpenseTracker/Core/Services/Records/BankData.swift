//
//  BankData.swift
//  ExtractBank
//
//  Created by Jovan Radivojsa on 12.2.23..
//

import Foundation

class Account: Codable {
    let accountNumber: String
    var records: [Record] = []
    var accountState: String = "0"
    
    init(accountNumber: String) {
        self.accountNumber = accountNumber
    }
}
