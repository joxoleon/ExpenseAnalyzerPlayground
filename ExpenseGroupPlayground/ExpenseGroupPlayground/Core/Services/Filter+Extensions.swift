//
//  Filter+Extensions.swift
//  ExpenseGroupPlayground
//
//  Created by Jovan Radivojsa on 17.2.23..
//

import Foundation

extension Filter {
    convenience init(name: String, tags: [Tag], filteringRules: [FilteringRule]) {
        let tagNames = tags.compactMap { $0.name }
        self.init(name: name, tagNames: tagNames, filteringRules: filteringRules)
    }
}
