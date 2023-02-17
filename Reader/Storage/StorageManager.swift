//
//  StorageManager.swift
//  Extract Bank
//
//  Created by Jovan Radivojsa on 16.2.23.
//

import Foundation

class StorageManager {
    
    // MARK: - Singleton properties
    
    static let shared: StorageManager = StorageManager()
    private init() {}
    
    // MARK: - public methods
    
    func save(codable: Codable, to fileName: String) {
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let fileURL = documentsDirectory.appendingPathComponent(fileName)
        
        do {
            let encoder = JSONEncoder()
            let data = try encoder.encode(codable)
            try data.write(to: fileURL)
        } catch {
            print("Failed json serialization with error: \(error)")
        }
    }
    
    func load<T: Codable>(from fileName: String) -> T? {
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let fileURL = documentsDirectory.appendingPathComponent(fileName)
        do {
            let data = try Data(contentsOf: fileURL)

            let decoder = JSONDecoder()
            let result = try decoder.decode(T.self, from: data)
            return result
        } catch {
            print("Failed loading json from file: \(fileName) with error: \(error)")
        }
        return nil
    }
}
