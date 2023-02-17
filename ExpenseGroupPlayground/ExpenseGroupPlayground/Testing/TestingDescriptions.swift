//
//  TestingDescriptions.swift
//  ExpenseGroupPlayground
//
//  Created by Jovan Radivojsa on 17.2.23..
//

import Foundation

func testDescriptions() {
    testUnmarkedExpensesWithDuplicates()
}

fileprivate func testUnmarkedExpensesWithDuplicates() {
    loadServices()
    let descriptions = loadDescriptions()
    let filter = FilterStore.everythingFilter
    let filteredDescriptions = (filter.filter(filterable: descriptions) as? [String]) ?? []
//    print("")
//    printArray(title: "FILTERED DESCRIPTIONS", arr: filteredDescriptions)
//    print("")
    var unfilteredDescriptions = descriptions
    unfilteredDescriptions.removeAll { filteredDescriptions.contains($0) }
    printArray(title: "UNFILTERED DESCRIPTIONS", arr: unfilteredDescriptions)
}

fileprivate func unmarkedExpensesOverview() {
    loadServices()
    let descriptions = loadDescriptions()
    let uniqueDescriptions = descriptions.removeDuplicates()
    let filter = FilterStore.everythingFilter
    let filteredDescriptions = (filter.filter(filterable: uniqueDescriptions) as? [String]) ?? []
    print("")
    printArray(title: "FILTERED DESCRIPTIONS", arr: filteredDescriptions)
    print("")
    var unfilteredDescriptions = uniqueDescriptions
    unfilteredDescriptions.removeAll { filteredDescriptions.contains($0) }
    printArray(title: "UNFILTERED DESCRIPTIONS", arr: unfilteredDescriptions)
    
}

fileprivate func loadServices() {
    TagStore.shared.addTagsFromCode()
}

fileprivate func loadDescriptions() -> [String] {
    let descriptionFileName = "transactionDescriptions.json"
    let descriptions: [String]? = StorageManager.shared.load(from: descriptionFileName)
    return descriptions ?? []
}

func printSectionStart(description: String) {
    print("*************************** \(description) ***************************")
}

func printArray(title: String, arr: [String]) {
    printSectionStart(description: title)
    print("count = \(arr.count)")
    print("")
    for e in arr {
        print(e)
    }
    print("")
}
