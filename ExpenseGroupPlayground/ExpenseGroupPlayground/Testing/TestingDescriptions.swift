//
//  TestingDescriptions.swift
//  ExpenseGroupPlayground
//
//  Created by Jovan Radivojsa on 17.2.23..
//

import Foundation

func testDescriptions() {
    initAfterRefactor()
}

fileprivate func initAfterRefactor() {
    TagStore.shared.addTagsAndFiltersFromCode()
    TagStore.shared.save()
    TagStore.shared.load()
    
    let descriptions = loadDescriptions()
    let everythingTag = TagStore.everythingTag
    let filteredDescriptions = (everythingTag.filter(filterable: descriptions) as? [String]) ?? []
    var unfilteredDescriptions = descriptions
    unfilteredDescriptions.removeAll { filteredDescriptions.contains($0) }
    let multipleOccurrencesArray = unfilteredDescriptions.removeElementsAppearingLessThan(numberOfTimes: 2)
    printArray(title: "multiple occurrences", arr: multipleOccurrencesArray)
}

//fileprivate func testFilterStore() {
//    FilterStore.shared.load()
//    TagStore.shared.load()
//    let descriptions = loadDescriptions()
//    let filter = FilterStore.everythingFilter
//    let filteredDescriptions = (filter.filter(filterable: descriptions) as? [String]) ?? []
//    var unfilteredDescriptions = descriptions
//    unfilteredDescriptions.removeAll { filteredDescriptions.contains($0) }
//    let multipleOccurrencesArray = unfilteredDescriptions.removeElementsAppearingLessThan(numberOfTimes: 2)
//    printArray(title: "multiple occurrences", arr: multipleOccurrencesArray)
//}
//
//fileprivate func testUnmarkedExpensesWithDuplicates() {
//    loadServices()
//    let descriptions = loadDescriptions()
//    let filter = FilterStore.everythingFilter
//    let filteredDescriptions = (filter.filter(filterable: descriptions) as? [String]) ?? []
////    print("")
////    printArray(title: "FILTERED DESCRIPTIONS", arr: filteredDescriptions)
////    print("")
//    var unfilteredDescriptions = descriptions
//    unfilteredDescriptions.removeAll { filteredDescriptions.contains($0) }
////    printArray(title: "UNFILTERED DESCRIPTIONS", arr: unfilteredDescriptions)
//    let multipleOccurrencesArray = unfilteredDescriptions.removeElementsAppearingLessThan(numberOfTimes: 2)
//    printArray(title: "multiple occurrences", arr: multipleOccurrencesArray)
//    FilterStore.shared.save()
//    TagStore.shared.save()
//}
//
//fileprivate func unmarkedExpensesOverview() {
//    loadServices()
//    let descriptions = loadDescriptions()
//    let uniqueDescriptions = descriptions.removeDuplicates()
//    let filter = FilterStore.everythingFilter
//    let filteredDescriptions = (filter.filter(filterable: uniqueDescriptions) as? [String]) ?? []
//    print("")
//    printArray(title: "FILTERED DESCRIPTIONS", arr: filteredDescriptions)
//    print("")
//    var unfilteredDescriptions = uniqueDescriptions
//    unfilteredDescriptions.removeAll { filteredDescriptions.contains($0) }
//    printArray(title: "UNFILTERED DESCRIPTIONS", arr: unfilteredDescriptions)
//    
//}
//
//fileprivate func loadServices() {
//    FilterStore.shared.addTagsAndFiltersFromCode()
//}

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
