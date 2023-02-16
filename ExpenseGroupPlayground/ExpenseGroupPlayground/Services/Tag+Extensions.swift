//
//  Tag+Extensions.swift
//  ExpenseGroupPlayground
//
//  Created by Jovan Radivojsa on 16.2.23..
//

import Foundation

extension Tag {
    
    // MARK: - Initialization
    
    convenience init(_ tagName: String, _ tagRule: String) {
        self.init(name: tagName, subStringRules: [tagRule])
    }
    
    convenience init(_ tagName: String, _ tagRules: [String]) {
        self.init(name: tagName, subStringRules: tagRules)
    }
    
    // MARK: - Utility
    
    var description: String {
        "tagName: \(name), tagRules: \(substringRules)"
    }
}
