//
//  Tag.swift
//  ExpenseGroupPlayground
//
//  Created by Jovan Radivojsa on 17.2.23..
//

import Foundation

class Tag: Codable {
    
    // MARK: - Persistable properties
    
    let name: String
    let tags: [Tag]
    let rules: [PersistableRule]
    
    init(name: String, rules: [PersistableRule], tags: [Tag]) {
        self.name = name
        self.rules = rules
        self.tags = tags
    }
    
    // MARK: - Computed properties
}

// MARK: - Extensions

extension Tag: FilterProtocol {
    var allRules: [Rule] {
        var rules = self.rules
        for tag in tags {
            rules.append(contentsOf: tag.rules)
        }
        return rules
    }
}

extension Tag {
    
    // MARK: - Initialization
    
    convenience init(_ tagName: String, _ tagRule: PersistableRule) {
        self.init(name: tagName, rules: [tagRule], tags: [])
    }
    
    convenience init(_ tagName: String, _ tagRules: [PersistableRule]) {
        self.init(name: tagName, rules: tagRules, tags: [])
    }
    
    // MARK: - Utility
    
    var description: String {
        "tagName: \(name), tagRules: \(rules)"
    }
}
