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
    let rule = RegexRule(regularExpression: "mp\\d+ ")
    print("should be true")
    print(rule.doesSatisfy(description: "mp123 asdfasf asfd asdf"))
    print(rule.doesSatisfy(description: "mp1 sdfsdaf"))
    print(rule.doesSatisfy(description: "mp1234 "))
    print(rule.doesSatisfy(description: "mp000 asdf"))
    print(rule.doesSatisfy(description: "mp12345 "))
    print("")
    print("should be false")
    print(rule.doesSatisfy(description: ""))
    print(rule.doesSatisfy(description: "mp"))
    print(rule.doesSatisfy(description: "mp1234"))
    print(rule.doesSatisfy(description: "mp 1234"))
    print(rule.doesSatisfy(description: "mp123p"))
}

func testSubstringRules() {
    let rule = SubstringRule(subString: "vero")
    
    print("should be true")
    print(rule.doesSatisfy(description: "asfdasfVEROsadfasfd"))
    print(rule.doesSatisfy(description: "asdfafVeRo"))
    print(rule.doesSatisfy(description: "vero"))
    print(rule.doesSatisfy(description: "asfddasfsdafVEro"))
    print(rule.doesSatisfy(description: "asdffsdVERoASDFASFD"))
    print("")
    print("should be false")
    print(rule.doesSatisfy(description: ""))
    print(rule.doesSatisfy(description: "SADFASFSAFASD"))
    print(rule.doesSatisfy(description: "asdfasdfsdaf"))
    print(rule.doesSatisfy(description: "VERasdfasfdasdfd"))
    print(rule.doesSatisfy(description: "asdfasdfver"))
}
