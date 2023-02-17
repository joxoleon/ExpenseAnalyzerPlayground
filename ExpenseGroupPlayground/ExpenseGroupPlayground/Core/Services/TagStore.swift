//
//  Tags.swift
//  ExpenseGroupPlayground
//
//  Created by Jovan Radivojsa on 16.2.23..
//

import Foundation

fileprivate enum TagStoreConstants {
    static let tagFileName = "tags.json"
}

class TagStore {
    
    // MARK: - Types
    
    class TagData: Codable {
        var tags: [Tag] = []
    }
    
    // MARK: - Singleton
    
    private init() {}
    static let shared = TagStore()
    
    // MARK: - Derived properties
    
    var tagsByName: [String: Tag] = [:]
    var tags: [Tag] {
        return tagData.tags
    }
    
    // MARK: - Private properties
    
    private var tagData: TagData = TagData()
    
    // MARK: - public methods
    
    func add(_ tag: Tag) {
        guard tagsByName[tag.name] == nil else {
            assertionFailure("Trying to overwrite an existing tag")
            return
        }
        tagData.tags.append(tag)
        tagsByName[tag.name] = tag
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
        self.tagsByName.removeAll()
        for tag in tagData.tags {
            tagsByName[tag.name] = tag
        }
    }
}
