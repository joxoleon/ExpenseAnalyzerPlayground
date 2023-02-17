//
//  Tags.swift
//  ExpenseGroupPlayground
//
//  Created by Jovan Radivojsa on 16.2.23..
//

fileprivate enum TagStoreConstants {
    static let tagFileName = "tags.json"
}

import Foundation

class Tag: Codable {
    let name: String
    let rules: [FilteringRule]
    
    init(name: String, rules: [FilteringRule]) {
        self.name = name
        self.rules = rules
    }
}

class TagData: Codable {
    var tags: [Tag] = []
}

class TagStore {
    
    // MARK: - Singleton
    
    private init() {}
    static let shared = TagStore()
    
    // MARK: - Public properties
    
    var tags: [String: Tag] = [:]
    
    // MARK: - Private properties
    
    private var tagData: TagData = TagData()
    
    // MARK: - public methods
    
    func add(_ tag: Tag) {
        guard tags[tag.name] == nil else {
            assertionFailure("Trying to overwrite an existing tag")
            return
        }
        tagData.tags.append(tag)
        tags[tag.name] = tag
    }
    
    func save() {
        StorageManager.shared.save(codable: tagData, to: TagStoreConstants.tagFileName)
    }
    
    func load() {
        guard let tagData: TagData = StorageManager.shared.load(from: TagStoreConstants.tagFileName) else {
            assertionFailure("Failed to load tags from file")
            return
        }
        self.tagData = tagData
        initializeDerivedProperties()
    }
    
    // MARK: - Private methods
    
    private func initializeDerivedProperties() {
        self.tags.removeAll()
        for tag in tagData.tags {
            tags[tag.name] = tag
        }
    }
}
