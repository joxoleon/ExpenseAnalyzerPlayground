//
//  Filter.swift
//  ExpenseGroupPlayground
//
//  Created by Jovan Radivojsa on 17.2.23..
//

import Foundation

protocol Filterable {
    var description: String { get }
    var timeInterval: TimeInterval { get }
    var amount: Double { get }
}

protocol FilterProtocol {
    var allRules: [Rule] { get }
    
    func filter(filterable: [Filterable]) -> [Filterable]
}

// MARK: - Extensions
// MARK: Filter implementation

extension FilterProtocol {
    func filter(filterable: [Filterable]) -> [Filterable] {
        return filterable.compactMap { allRules.doesSatisfy(filterable:$0) == true ? $0 : nil }
    }
}
