//
//  Filter.swift
//  ExpenseGroupPlayground
//
//  Created by Jovan Radivojsa on 17.2.23..
//

import Foundation

class Filter: Codable {
    let name: String
    let tagNames: [String]
    let filteringRules: [FilteringRule]
    
    init(name: String, tagNames: [String], filteringRules: [FilteringRule]) {
        self.name = name
        self.tagNames = tagNames
        self.filteringRules = filteringRules
    }

    // MARK: - Derived properties
    
    lazy var tags: [Tag] = {
        return TagStore.shared.tagsByName[tagNames]
    }()
    
    lazy var allFilters: [FilteringRule] = {
        var filters: [FilteringRule] = []
        for tag in tags {
            filters.append(contentsOf: tag.rules)
        }
        return filters + filteringRules
    }()
}

// MARK: - Extensions

extension Filter: FilterProtocol {
    var allRules: [Rule] {
        allFilters
    }
}
