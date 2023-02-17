//
//  Rule.swift
//  ExpenseGroupPlayground
//
//  Created by Jovan Radivojsa on 17.2.23..
//

import Foundation

protocol Rule {
    func doesSatisfy(filterable: Filterable) -> Bool
}

// MARK: - Extensions

extension [Rule]: Rule {
    func doesSatisfy(filterable: Filterable) -> Bool {
        for rule in self where rule.doesSatisfy(filterable: filterable) {
            return true
        }
        return false
    }
}
