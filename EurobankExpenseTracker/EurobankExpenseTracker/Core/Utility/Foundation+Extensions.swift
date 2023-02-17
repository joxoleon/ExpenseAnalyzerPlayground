//
//  FoundationExtensions.swift
//  ExpenseGroupPlayground
//
//  Created by Jovan Radivojsa on 17.2.23..
//

import Foundation

extension Dictionary {
    subscript(keys: [Key]) -> [Value] {
        get {
            return keys.compactMap { key in
                guard let value = self[key] else {
                    assertionFailure("Key not found in dictionary: \(key)")
                    return nil
                }
                return value
            }
        }
    }
}

extension Array where Element == String {
    func removeDuplicates() -> [Element]{
        return Array(Set(self))
    }
    
}

extension Array {
    func removeElementsAppearingLessThan(numberOfTimes: Int) -> [Element] where Element: Hashable {
        var counts = [Element: Int]()
        for element in self {
            counts[element, default: 0] += 1
        }
        return self.filter { counts[$0]! >= numberOfTimes }
    }
}
