//
//  Filters.swift
//  ExpenseGroupPlayground
//
//  Created by Jovan Radivojsa on 16.2.23..
//

import Foundation

fileprivate enum FilterStoreConstants {
    static let filterFileName = "filters.json"
}

class Filter: Codable {
    let name: String
    let tagNames: String
}

class FilterStore {
    
    // MARK: - Singleton
    
    private init() {}
    static let shared = FilterStore()
    
}
