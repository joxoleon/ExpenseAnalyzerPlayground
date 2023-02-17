//
//  Tag+Extensions.swift
//  ExpenseGroupPlayground
//
//  Created by Jovan Radivojsa on 16.2.23..
//

import Foundation

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
