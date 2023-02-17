//
//  Filter+Extensions.swift
//  ExpenseGroupPlayground
//
//  Created by Jovan Radivojsa on 17.2.23..
//

import Foundation

extension FilterStore {
    static var everythingFilter: Filter = {
        let allTags = TagStore.shared.tags
        let tagNames = allTags.compactMap { $0.name }
        let filter = Filter(name: "Everything", tagNames: tagNames, filteringRules: [])
        return filter
    }()
}
