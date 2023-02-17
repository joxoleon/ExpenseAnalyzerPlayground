//
//  Tag.swift
//  ExpenseGroupPlayground
//
//  Created by Jovan Radivojsa on 17.2.23..
//

import Foundation

class Tag: Codable {
    let name: String
    let rules: [FilteringRule]
    
    init(name: String, rules: [FilteringRule]) {
        self.name = name
        self.rules = rules
    }
}

// MARK: - Extensions

extension Tag: FilterProtocol {
    var allRules: [Rule] { return rules }
}

extension Tag {
    
    // MARK: - Initialization
    
    convenience init(_ tagName: String, _ tagRule: FilteringRule) {
        self.init(name: tagName, rules: [tagRule])
    }
    
    convenience init(_ tagName: String, _ tagRules: [FilteringRule]) {
        self.init(name: tagName, rules: tagRules)
    }
    
    // MARK: - Utility
    
    var description: String {
        "tagName: \(name), tagRules: \(rules)"
    }
}
