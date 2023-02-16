//
//  TestingTags.swift
//  ExpenseGroupPlayground
//
//  Created by Jovan Radivojsa on 16.2.23..
//

import Foundation

func testTags() {
    loadTags()
    testState()
}

fileprivate func loadTags() {
    TagStore.shared.load()
}

fileprivate func saveTags() {
    TagStore.shared.save()
}

fileprivate func testState() {
    let tags = TagStore.shared.tags
    print(tags.count)
    for tag in tags.values {
        print("\(tag.description)")
    }
}

fileprivate func addTags() {
    // Taxi
    add("CarGo", "cargo")
    
    // Food delivery
    add("Glovo", "glovo")
    
    // Groceries
    add("Lidl", "lidl")
    add("Sumadija", "sumadija")
    add("Aroma", "aroma")
    add("Idea", ["mp102", "mp321"])
    add("Vero", "vero")
    add("Maxi", "maxi")
    add("Tempo", "tempo")
    add("Trivuk", "trivuk")
    add("Paladini", "paladini")
    add("Aman", "aman")
    add("UniverExport", "univer")
    add("Sunce", "qvattro")
    
    // Clothes
    add("C & A", "c & a")
    add("Reserved", "reserved")
    add("Zara", ["zara usce", "zara 67"])
    add("Koton", "koton")
    add("Cropp", "cropp")
    add("Peek & Cloppenburg", "rs37")
    
    // Shoes
    add("Deichmann", "deichmann")
    
    // Sport
    add("PanSport", "pansport")
    add("N Sport", "n sport")
    add("InterSport", "intersport")
    add("Planeta Sport", "planeta sport")
    
    // Sport centers
    add("SC Master", "master doo")
    
    // Gas stations
    add("MOL", "mol serbia")
    add("EKO", "eko serbia")
    add("EURO Petrol", "euro petrol")
    add("NIS", ["bs tosin bunar", "bs novi beograd"])
    add("Lukoil", "lukoil")
    add("OMV", "omv")
    
    // Subscriptions
    add("Netflix", "netflix")
    add("Amazon", "amazon")
    add("HBO", "hbo")
    add("Google", "google")
    add("Apple", "apple")
}

fileprivate func add(_ name: String, _ rule: String) {
    TagStore.shared.add(Tag(name, rule))
}

fileprivate func add(_ name: String, _ rule: [String]) {
    TagStore.shared.add(Tag(name, rule))
}
