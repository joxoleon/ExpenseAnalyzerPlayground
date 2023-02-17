//
//  FilterProtocol.swift
//  ExpenseGroupPlayground
//
//  Created by Jovan Radivojsa on 17.2.23..
//

import Foundation

protocol FilterProtocol {
    var allRules: [Rule] { get }
    
    func filter(filterable: [Filterable]) -> [Filterable]
}

extension FilterProtocol {
    func filter(filterable: [Filterable]) -> [Filterable] {
        return filterable.compactMap { allRules.doesSatisfy(filterable:$0) == true ? $0 : nil }
    }
}

extension [Rule]: Rule {
    func doesSatisfy(filterable: Filterable) -> Bool {
        for rule in self where rule.doesSatisfy(filterable: filterable) {
            return true
        }
        return false
    }
}
