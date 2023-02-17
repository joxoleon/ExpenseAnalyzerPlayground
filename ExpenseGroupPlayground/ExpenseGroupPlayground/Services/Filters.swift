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

class FilterData: Codable {
    var filters: [Filter] = []
}

class FilterStore {
    
    // MARK: - Singleton
    
    private init() {}
    static let shared = FilterStore()
    
    // MARK: - Public properties
    
    var filtersByName: [String: Filter] = [:]
    var filters: [Filter] {
        return filterData.filters
    }
    
    // MARK: - Private properties
    
    var filterData: FilterData = FilterData()
    
    // MARK: - Public methods
    
    func add(_ filter: Filter) {
        guard filtersByName[filter.name] == nil else {
            assertionFailure("Trying to overwrite an existing filter")
            return
        }
        filterData.filters.append(filter)
        filtersByName[filter.name] = filter
    }
    
    func save() {
        StorageManager.shared.save(codable: filterData, to: FilterStoreConstants.filterFileName)
    }
    
    func load() {
        guard let filterData: FilterData = StorageManager.shared.load(from: FilterStoreConstants.filterFileName) else {
            assertionFailure("Failed to load filters from file")
            return
        }
        self.filterData = filterData
        initializeDerivedProperties()
    }
    
    // MARK: - Private methods
    
    private func initializeDerivedProperties() {
        self.filtersByName.removeAll()
        for filter in filterData.filters {
            filtersByName[filter.name] = filter
        }
    }
}
