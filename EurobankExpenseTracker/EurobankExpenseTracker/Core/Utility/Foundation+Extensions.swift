//
//  FoundationExtensions.swift
//  ExpenseGroupPlayground
//
//  Created by Jovan Radivojsa on 17.2.23..
//

import Foundation

// MARK: - Extension Constants

enum ExtensionConstants {
    static let dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy"
        return dateFormatter
    }()
}

// MARK: - Dictionary

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

// MARK: - Array

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

    // MARK: - String

extension String {
    var bankStringToDouble: Double {
        guard let value = Double(self.replacingOccurrences(of: ",", with: "")) else {
            assertionFailure("Unable to convert amount to double")
            return .zero
        }
        return value
    }
    
    var bankDateToTimeInterval: TimeInterval {
        guard let date = ExtensionConstants.dateFormatter.date(from: self) else {
            assertionFailure("Unable to convert string date to time interval")
            return .zero
        }
        return date.timeIntervalSince1970
    }
}
