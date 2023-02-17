//
//  TagStore+MainTags.swift
//  ExpenseGroupPlayground
//
//  Created by Jovan Radivojsa on 17.2.23..
//

import Foundation

struct MainTagContainer {
    
    // MARK: - Properties
    
    var tags: [Tag] = []
    
    // MARK: - Main Tags
    
    let taxiServices = t("Taxi services")
    let foodDelivery = t("Food delivery")
    let groceries = t("Groceries")
    let clothes = t("Clothes")
    let shoes = t("Shoes")
    let sport = t("Sport")
    let sportCenters = t("Sport Centers")
    let gasStations = t("Gas stations")
    let road = t("Road")
    let subscriptions = t("Subscriptions")
    let onlineShopping = t("Online shopping")
    let restaurantsAndCaffes = t("Restaurants and caffes")
    let parking = t("Parking")
    let varousStores = t("Various Stores")
    let bills = t("Bills")
    let atm = t("ATM")
    let moneyTransfers = t("Money Transfers")
    let pharmacies = t("Pharmacies")
    let healthCare = t("Healthcare")
    let salary = t("Salary")
    let furniture = t("Furniture")
    
    fileprivate static func t(_ name: String) -> Tag {
        guard let tag = TagStore.shared.tagsByName[name] else {
            fatalError("No tag by that name: \(name)")
        }
        
        return tag
    }
}
