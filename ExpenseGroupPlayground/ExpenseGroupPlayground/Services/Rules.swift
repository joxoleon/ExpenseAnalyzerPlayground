//
//  Rules.swift
//  ExpenseGroupPlayground
//
//  Created by Jovan Radivojsa on 16.2.23..
//

import Foundation

protocol Rule: Codable {
    func doesSatisfy(description: String) -> Bool
}

class SubstringRule: Rule {
    let subString: String
    
    init(subString: String) {
        self.subString = subString
    }
    
    func doesSatisfy(description: String) -> Bool {
        return description.lowercased().contains(subString.lowercased())
    }
}

class RegexRule: Rule {
    
    let regularExpression: String
    
    init(regularExpression: String) {
        self.regularExpression = regularExpression
    }
    
    func doesSatisfy(description: String) -> Bool {
        do {
            let regex = try NSRegularExpression(pattern: regularExpression, options: [])
            let range = NSRange(location: 0, length: description.utf16.count)
            return regex.firstMatch(in: description, options: [], range: range) != nil
        } catch {
            print("Error creating regular expression: \(error)")
            return false
        }
    }
}
