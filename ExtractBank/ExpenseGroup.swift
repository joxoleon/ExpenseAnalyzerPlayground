//
//  ExpenseGroup.swift
//  ExtractBank
//
//  Created by Jovan Radivojsa on 9.2.23..
//

import Foundation

class ExpenseGroup {
    let tag: Tag
    let allExpenses: [Record]
    
    init(tag: Tag) {
        self.tag = tag
        allExpenses = Bank.shared.getExpenses(for: tag)
    }
    
    var totalAmountSpent: Double {
        var res = 0.0
        for e in allExpenses {
            res += e.amount
        }
        return res
    }
    
    var numberOfRecords: Int {
        return allExpenses.count
    }
    
    var averageCostPerTransaction: Double {
        totalAmountSpent / Double(numberOfRecords)
    }
    
    var defaultDescription: String {
        verboseDescription
    }
    
    var description: String {
        return """
        For expenses tagged with \(tag.displayName)
        There have been: \(numberOfRecords)
        Totalling in the amount of: \(totalAmountSpent)
        Averaging in: \(averageCostPerTransaction) per record
        
        """
    }
    
    var verboseDescription: String {
        var resultDesc =  description + "\n"
        resultDesc += """
        All transactions listed: \n
        """
        for e in allExpenses {
            resultDesc += e.expenseDescription + "\n"
        }
        return resultDesc
    }
}
