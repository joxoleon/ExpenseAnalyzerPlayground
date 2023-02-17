//
//  TagStore+Extensions.swift
//  ExpenseGroupPlayground
//
//  Created by Jovan Radivojsa on 17.2.23..
//

import Foundation

extension TagStore {
    func addTagsFromCode() {
        // Taxi
        newTag("CarGo", ["cargo", "go technologies"])
        t("Yandex")
        t("Naxi taksi")
        
        // Food delivery
        newTag("Glovo", "glovo")
        newTag("Donesi", "plotun doo")
        
        // Groceries
        newTag("Lidl", "lidl")
        newTag("Sumadija", "sumadija")
        newTag("Aroma", "aroma")
        newTag("Idea", ["MP542", "MP139", "MP102", "MP295", "MP321", "MP540", "MP035", "prodavnica br"])
//        newTag("Idea", regex: "mp\\d+ ") // Add support for regex and substrings
        newTag("Vero", "vero")
        newTag("Maxi", "maxi")
        newTag("Tempo", "tempo")
        newTag("Trivuk", "trivuk")
        newTag("Paladini", "paladini")
        newTag("Aman", "aman")
        newTag("UniverExport", "univer")
        newTag("Sunce", "qvattro")
        t("C Market")
        t("swisslion")
        newTag("Drink Store", "andrax-prod")
        
        // Clothes
        newTag("C & A", "c & a")
        newTag("Reserved", "reserved")
        newTag("Zara", regex: "^zara\\s")
        newTag("Koton", "koton")
        newTag("Cropp", "cropp")
        newTag("Peek & Cloppenburg", ["rs37", "peek and cloppenburg"])
        t("New Yorker")
        t("Pull and Bear")
        t("H&M")
        t("Bershka")
        
        // Shoes
        newTag("Deichmann", "deichmann")
        
        // Sport
        newTag("PanSport", "pansport")
        newTag("N Sport", "n sport")
        newTag("InterSport", "intersport")
        newTag("Planeta Sport", "planeta sport")
        t("Emergo Sport")
        t("Decathlon")
        
        // Sport centers
        newTag("SC Master", "master doo")
        
        // Gas stations
        newTag("MOL", "mol serbia")
        newTag("EKO", "eko serbia")
        newTag("EURO Petrol", "euro petrol")
        newTag("NIS", ["508 novi beograd", "648 dzona kenedija", "657 Zarkovo", "980 BS", "982 BS", "NIS AD-TOSIN", "525 francuska beograd"])
        newTag("Lukoil", "lukoil")
        newTag("OMV", "omv")
        
        // Travel
        newTag("Road tolls", ["jp putevi"])
        
        // Subscriptions
        newTag("Netflix", "netflix")
        newTag("Amazon", "amazon")
        newTag("HBO", "hbo")
        newTag("Google", "google")
        newTag("Apple", "apple")
        t("Crunchyroll")
        t("MyPatrol")
        t("KupujemProdajem")
        
        // Online shopping
        newTag("Aliexpress", "aliexpress")
        t("CDKeys")
        t("Paypal")
        
        // Restaurants & caffes
        newTag("Stari Pingvin", "stari pingvin")
        newTag("Skroz Dobra Pekara", "trgocentar")
        newTag("Pekara Domino", ["str prkara domino", "pekara domino"])
        newTag("Kineski Trzni centar na Bezanijskoj Kosi", "joy city 2018 doo")
        t("Riddle bar")
        t("Dogma")
        t("Docker")
        t("Restoran Kesten")
        t("Restoran Godo")
        t("Zapata")
        t("Hleb i Kifle")
        t("Tanker")
        t("Tri Sesira")
        t("Thinkers")
        t("Bella Napoli")
        t("Jolly Roger")
        newTag("Ben Akiba", ["ben akiba", "benakiba"])
        t("Gelato")
        t("Palilulac")
        t("Gondola")
        t("Obrock")
        t("Cezar")
        t("Asia Food")
        t("SoulFood")
        t("NiceFood")
        t("Havarija")
        t("Burger Bar")
        t("Mediterano")
        t("Mim Team Food")
        t("Makao")
        t("Pizza Bar")
        t("McDonald's")
        t("Zabac")
        t("Smash Burgers")
        newTag("KC Grad", "kulturni front")
        newTag("Saint", "Finest food")
        newTag("Lorenzo & Kakalamba", "beer food options")
        t("zaokret")
        t("Kota 70")
        newTag("Sandwich Store", "barel grupa")
        
        // Parking
        t("Parking")
        
        // Various stores
        newTag("DM Store", "dm filijala")
        t("Vulkan")
        t("PC Centar")
        t("Uradi Sam")
        newTag("Umbrella Vapes", "umbrella")
        t("Laguna")
        t("Zlatara Andrejevic")
        t("Vodovod")
        t("Gigatron")
        t("VIP Sistem")
        t("Coral")
        t("Tehnomedia")
        newTag("Moj Kiosk", "stampa sistem")
        t("Lyra")
        t("Kanibal")
        newTag("Maus Registracija", "maus")
        t("Okov")
        
        // Bills
        t("Infostan")
        newTag("EPS", "jp eps")
        newTag("Telekom Srbija", ["telekom srbija", "teleko beograd"])
        newTag("Alta menjacnica", "alta")
        
        // Bank
        newTag("ATM", ["atm", "bankomat", "117/piramida", "13/bgd immocentar"])
        newTag("Transfering money to people", ["transakcije po nalogu", "druge transakcije", "petar stankovic", "dario mirovic", "filip zemljak", "sonja novakovic", "dusan petrovic", "dejan borojevic", "nikola petrovic", "dejan mitrovic", "srdan majstorovic", "Ivona Miljus"])
        newTag("Transfering my own money", "Banking bezgotovinsko placanje")
        newTag("Various Banks", ["Raiffeisen", "Intesa"])
        t("Kupovina valute")
        t("Prodaja valute")
        t("Pripis kamate")
        t("Vodjenje platnog racuna")
        t("Gotovinska isplata")
        
        
        
        // Pharmacies
        newTag("Pharmacies", ["apoteka", "farm", "pharm", "vega", "prima", "zdravstvena ustanova a"])
        
        // Healthcare
        newTag("Euromedik", "eurome")
        t("Beo-Lab")
        newTag("Konzilijum", "milica tatic pr")
        
        // Salary
        t("Interventure")
        t("Lotus Flare")
        
        // Shit
        t("Tinder")
        t("Balkan Bet")
        
        // Furniture
        t("Emmezeta")
        t("Ikea")
        t("Forma Ideale")
        t("Jysk")
    }
    
    fileprivate func t(_ name: String) {
        add(Tag(name, .substring(substring: name.lowercased())))
    }
    
    fileprivate func newTag(_ name: String, _ substring: String) {
        add(Tag(name, .substring(substring: substring)))
    }

    fileprivate func newTag(_ name: String, _ substrings: [String]) {
        add(Tag(name, .substrings(substrings: substrings)))
    }

    fileprivate func newTag(_ name: String, regex: String) {
        add(Tag(name, .regex(regex: regex)))
    }
}


