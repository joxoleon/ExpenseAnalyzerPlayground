//
//  TestingRules.swift
//  ExpenseGroupPlayground
//
//  Created by Jovan Radivojsa on 16.2.23..
//

import Foundation


func testRules() {
    testRegularExpressionRules()
}

func testRegularExpressionRules() {
    let rule = FilteringRule.regex(regex: "mp\\d+ ")
//    let rule = RegexRule(regularExpression: "mp\\d+ ")
    print("should be true")
    print(rule.doesSatisfy(filterable: "mp123 asdfasf asfd asdf"))
    print(rule.doesSatisfy(filterable: "mp1 sdfsdaf"))
    print(rule.doesSatisfy(filterable: "mp1234 "))
    print(rule.doesSatisfy(filterable: "mp000 asdf"))
    print(rule.doesSatisfy(filterable: "mp12345 "))
    print(rule.doesSatisfy(filterable: "MP035 NOVI BEOGRAD"))
    print("")
    print("should be false")
    print(rule.doesSatisfy(filterable: ""))
    print(rule.doesSatisfy(filterable: "mp"))
    print(rule.doesSatisfy(filterable: "mp1234"))
    print(rule.doesSatisfy(filterable: "mp 1234"))
    print(rule.doesSatisfy(filterable: "mp123p"))
}

func testSubstringRules() {
    let rule = FilteringRule.substring(substring: "vero")
    
    print("should be true")
    print(rule.doesSatisfy(filterable: "asfdasfVEROsadfasfd"))
    print(rule.doesSatisfy(filterable: "asdfafVeRo"))
    print(rule.doesSatisfy(filterable: "vero"))
    print(rule.doesSatisfy(filterable: "asfddasfsdafVEro"))
    print(rule.doesSatisfy(filterable: "asdffsdVERoASDFASFD"))
    print("")
    print("should be false")
    print(rule.doesSatisfy(filterable: ""))
    print(rule.doesSatisfy(filterable: "SADFASFSAFASD"))
    print(rule.doesSatisfy(filterable: "asdfasdfsdaf"))
    print(rule.doesSatisfy(filterable: "VERasdfasfdasdfd"))
    print(rule.doesSatisfy(filterable: "asdfasdfver"))
}
