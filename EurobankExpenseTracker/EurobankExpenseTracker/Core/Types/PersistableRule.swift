//
//  Rules.swift
//  ExpenseGroupPlayground
//
//  Created by Jovan Radivojsa on 16.2.23..
//

import Foundation

enum PersistableRule: Codable {
    case substring(substring: String)
    case substrings(substrings: [String])
    case regex(regex: String)
}

extension PersistableRule: Rule {
    func doesSatisfy(filterable: Filterable) -> Bool {
        switch self {
        case .substring(let substring): return does(description: filterable.description, contain: substring)
        case .regex(let regex): return check(description: filterable.description, for: regex)
        case .substrings(let substrings): return does(description: filterable.description, contain: substrings)
        }
    }
}

// MARK: - Substring rule

extension PersistableRule {
    fileprivate func does(description: String, contain substring: String) -> Bool {
        return description.lowercased().contains(substring.lowercased())
    }
}

// MARK: - Substrings rule

extension PersistableRule {
    private func does(description: String, contain substrings: [String]) -> Bool {
        let ld = description.lowercased()
        for s in substrings where ld.contains(s.lowercased()){
            return true
        }
        return false
    }
}

// MARK: - Regular expression rule

extension PersistableRule {
    private func check(description: String, for regularExpression: String) -> Bool {
        let d = description.lowercased()
        do {
            let regex = try NSRegularExpression(pattern: regularExpression, options: [])
            let range = NSRange(location: 0, length: d.utf16.count)
            return regex.firstMatch(in: d, options: [], range: range) != nil
        } catch {
            print("Error creating regular expression: \(error)")
            return false
        }
    }
}

// MARK: - Utility

extension PersistableRule {
    var description: String {
        switch self {
        case .substring(let substr): return "Contains substring: \(substr)"
        case .regex(let regex): return "Filtered by regex: \(regex)"
        case .substrings(let substrings): return "Contains substrings: \(substrings)"
        }
    }
}

extension Array where Element == PersistableRule {
    var description: String {
        var result = "["
        for e in self {
            result += "\(e.description), "
        }
        result += "]"
        return result
    }
}

// Added just for testing

extension String: Filterable {
    var description: String { self }
    var timeInterval: TimeInterval { TimeInterval() }
    var amount: Double { Double() }
}
