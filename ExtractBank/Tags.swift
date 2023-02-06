//
//  Tags.swift
//  ExtractBank
//
//  Created by Jovan Radivojsa on 8.2.23..
//

import Foundation

protocol TagRuleProtocol {
    func doesConform(expense: Record) -> Bool
}

class ContainsTag: TagRuleProtocol {
    
    let subString: String
    
    init(_ subString: String) {
        self.subString = subString.lowercased()
    }
    
    func doesConform(expense: Record) -> Bool {
        expense.descLowercased.contains(subString)
    }
}

class ContainsTags: TagRuleProtocol {
    let subStrings: [String]
    
    init(_ subStrings: [String]) {
        self.subStrings = subStrings
    }
    
    func doesConform(expense: Record) -> Bool {
        for subString in subStrings where expense.descLowercased.contains(subString) {
            return true
        }
        return false
    }
}

class Tag {
    let displayName: String
    let rules: [TagRuleProtocol]
    let subTags: [Tag]
    
    init(name: String, rules: [TagRuleProtocol], subTags: [Tag]) {
        self.displayName = name
        self.rules = rules
        self.subTags = subTags
    }
    
    var compoundRules: [TagRuleProtocol] {
        var cr = rules
        for tag in subTags {
            cr.append(contentsOf: tag.compoundRules)
        }
        return cr
    }
    
    func filter(expenses: [Record]) -> [Record] {
        let cr = compoundRules
        let filteredExpenses = expenses.filter { expense in
            for rule in cr where rule.doesConform(expense: expense) {
                return true
            }
            return false
        }
        return filteredExpenses
    }
}

extension Tag {
    static let cargo = Tag(
        name: "CarGo",
        rules: [ContainsTag("appcargo"), ContainsTag("GO TECHNOLOGIES")],
        subTags: []
    )
    static let glovo = Tag(
        name: "Glovo",
        rules: [ContainsTag("glovo")],
        subTags: []
    )
    
    static let transportation = Tag(name: "Transport", rules: [], subTags: [.cargo])
    
    static let sumadija = Tag(
        name: "Sumadija",
        rules: [ContainsTag("sumadija")],
        subTags: []
    )
    
    static let lidl = Tag(
        name: "Lidl",
        rules: [ContainsTag("Lidl")],
        subTags: []
    )
    
    static let groceries = Tag(
        name: "groceries",
        rules: [ContainsTags(["aroma", "mp102", "vero", "maxi", "tempo", "trivuk", "paladini", "aman", "qvattro", "univer", "mp321"])],
        subTags: [.sumadija, .lidl])
    
    static let clothes = Tag(
        name: "clothes",
        rules: [ContainsTags(["c & a", "reserved", "zara usce", "zara 67", "koton", "cropp", "rs37"])],
        subTags: []
    )
    
    static let malls = Tag(
        name: "shoppingMalls",
        rules: [ContainsTags(["deichmann", "sport"])],
        subTags: [clothes]
    )
    static let income = Tag(
        name: "income",
        rules: [ContainsTags(["interventure", "lotus flare"])],
        subTags: []
    )
    
    static let atm = Tag(
        name: "atm",
        rules: [ContainsTags(["podizanje gotovine"])],
        subTags: []
    )
    
    static let pool = Tag(
        name: "pool",
        rules: [ContainsTags(["master doo"])],
        subTags: [])
    
    static let gasStations = Tag(
        name: "gas stations",
        rules: [ContainsTags(["mol serbia", "eko serbia", "euro petrol", "bs tosin bunar", "bs novi beograd", "lukoil", "omv"])],
        subTags: []
    )
    
    static let aliexpress = Tag(name: "Aliexpress", rules: [ContainsTags(["aliexpress"])], subTags: [])
    
    static let subscriptions = Tag(
        name: "subscriptions",
        rules: [ContainsTags(["netflix", "hbo", "amazon", "google", "apple"])],
        subTags: []
    )
}

extension String {
    static let empty = ""
}
