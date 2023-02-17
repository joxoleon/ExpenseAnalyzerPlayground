//
//  Filter+Extensions.swift
//  ExpenseGroupPlayground
//
//  Created by Jovan Radivojsa on 17.2.23..
//

import Foundation

extension FilterStore {
    static var everythingFilter: Filter = {
        let allTags = TagStore.shared.tags
        let tagNames = allTags.compactMap { $0.name }
        let filter = Filter(name: "Everything", tagNames: tagNames, filteringRules: [])
        return filter
    }()
    
    public func addTagsAndFiltersFromCode() {
        
        f("Taxi services", [
            newTag("CarGo", ["cargo", "go technologies"]),
            t("Yandex"),
            t("Naxi taksi")
        ])
        
        f("Food delivery", [
            newTag("Glovo", "glovo"),
            newTag("Donesi", "plotun doo")
        ])
        
        
        f("Groceries", [
            newTag("Lidl", "lidl"),
            newTag("Sumadija", "sumadija"),
            newTag("Aroma", "aroma"),
            newTag("Idea", ["MP542", "MP139", "MP102", "MP295", "MP321", "MP540", "MP035", "prodavnica br"]),
            newTag("Vero", "vero"),
            newTag("Maxi", "maxi"),
            newTag("Tempo", "tempo"),
            newTag("Trivuk", "trivuk"),
            newTag("Paladini", "paladini"),
            newTag("Aman", "aman"),
            newTag("UniverExport", "univer"),
            newTag("Sunce", "qvattro"),
            t("C Market"),
            t("swisslion"),
            newTag("Drink Store", "andrax-prod"),
            newTag("Super Diskont", "scb gandijeva"),
        ])
        
        
        f("Clothes", [
            newTag("C & A", "c & a"),
            newTag("Reserved", "reserved"),
            newTag("Zara", regex: "^zara\\s"),
            newTag("Koton", "koton"),
            newTag("Cropp", "cropp"),
            newTag("Peek & Cloppenburg", ["rs37", "peek and cloppenburg"]),
            t("New Yorker"),
            t("Pull and Bear"),
            t("H&M"),
            t("Bershka"),
        ])
        
        
        f("Shoes", [
            newTag("Deichmann", "deichmann")
        ])
        
        
        f("Sport", [
            newTag("PanSport", "pansport"),
            newTag("N Sport", "n sport"),
            newTag("InterSport", "intersport"),
            newTag("Planeta Sport", "planeta sport"),
            t("Emergo Sport"),
            t("Decathlon")
        ])
        
        
        f("Sport Centers", [
            newTag("SC Master", "master doo")
        ])
        
        
        f("Gas stations", [
            newTag("MOL", "mol serbia"),
            newTag("EKO", "eko serbia"),
            newTag("EURO Petrol", "euro petrol"),
            newTag("NIS", ["508 novi beograd", "648 dzona kenedija", "657 Zarkovo", "980 BS", "982 BS", "NIS AD-TOSIN", "525 francuska beograd"]),
            newTag("Lukoil", "lukoil"),
            newTag("OMV", "omv"),
        ])
        
        
        f("Road", [
            newTag("Road tolls", ["jp putevi"])
        ])
        
        
        f("Subscriptions", [
            newTag("Netflix", "netflix"),
            newTag("Amazon", "amazon"),
            newTag("HBO", "hbo"),
            newTag("Google", "google"),
            newTag("Apple", "apple"),
            t("Crunchyroll"),
            t("MyPatrol"),
        ])
        
        
        f("Online shopping", [
            newTag("Aliexpress", "aliexpress"),
            t("CDKeys"),
            t("Paypal"),
            t("KupujemProdajem"),
        ])
        
        
        f("Restaurants and caffes", [
            newTag("Stari Pingvin", "stari pingvin"),
            newTag("Skroz Dobra Pekara", "trgocentar"),
            newTag("Pekara Domino", ["str prkara domino", "pekara domino"]),
            newTag("Kineski Trzni centar na Bezanijskoj Kosi", "joy city 2018 doo"),
            t("Riddle bar"),
            t("Dogma"),
            t("Docker"),
            t("Restoran Kesten"),
            t("Restoran Godo"),
            t("Zapata"),
            t("Hleb i Kifle"),
            t("Tanker"),
            t("Tri Sesira"),
            t("Thinkers"),
            t("Bella Napoli"),
            t("Jolly Roger"),
            newTag("Ben Akiba", ["ben akiba", "benakiba"]),
            t("Gelato"),
            t("Palilulac"),
            t("Gondola"),
            t("Obrock"),
            t("Cezar"),
            t("Asia Food"),
            t("SoulFood"),
            t("NiceFood"),
            t("Havarija"),
            t("Burger Bar"),
            t("Mediterano"),
            t("Mim Team Food"),
            t("Makao"),
            t("Pizza Bar"),
            t("McDonald's"),
            t("Zabac"),
            t("Smash Burgers"),
            newTag("KC Grad", "kulturni front"),
            newTag("Saint", "Finest food"),
            newTag("Lorenzo & Kakalamba", "beer food options"),
            t("zaokret"),
            t("Kota 70"),
            newTag("Sandwich Store", ["barel grupa", "nikola dordevic pr"]),
            newTag("Blok Kafe", "sormal limited kafe"),
            newTag("Silosi", "ponta 011 doo"),
            newTag("20/44", "ur club 20 kroz 44"),
            newTag("Znaci pub", "Ivan Petek PR znaci"),
            t("Balkan Bet"),
        ])
        
        
        f("Parking", [
            t("Parking")
        ])
        
        
        f("Various Stores", [
            newTag("DM Store", "dm filijala"),
            t("Vulkan"),
            t("PC Centar"),
            t("Uradi Sam"),
            newTag("Umbrella Vapes", "umbrella"),
            t("Laguna"),
            t("Zlatara Andrejevic"),
            t("Vodovod"),
            t("Gigatron"),
            t("VIP Sistem"),
            t("Coral"),
            t("Tehnomedia"),
            newTag("Moj Kiosk", "stampa sistem"),
            t("Lyra"),
            t("Kanibal"),
            newTag("Maus Car Center", "maus"),
            t("Okov"),
            newTag("Intermezzo Trafika", "intermezzo"),
            newTag("Inmedio trafika Zemun", "inmedio"),
            newTag("TMNT Blok 63 prodavnica", "t.m.n.t plus novi beograd"),
            newTag("Tehnomanija", "TEH "),
            t("Ekomes DOO"),
            t("SZTR Djurdjevic radnja surcin"),
        ])
        
        
        f("Bills", [
            t("Infostan"),
            newTag("EPS", "jp eps"),
            newTag("Telekom Srbija", ["telekom srbija", "teleko beograd"]),
            newTag("Alta menjacnica", "alta"),
        ])
        
        f("ATM", [
            newTag("ATM", ["atm", "bankomat", "117/piramida", "13/bgd immocentar", "bgd immocentar", "beograd blok 63 beograd", "AIKN0", "Raiffeisen", "Intesa"])
        ])
        
        f("Money Transfers", [
            newTag("Transfering money to people", ["transakcije po nalogu", "druge transakcije", "petar stankovic", "dario mirovic", "filip zemljak", "sonja novakovic", "dusan petrovic", "dejan borojevic", "nikola petrovic", "dejan mitrovic", "srdan majstorovic", "Ivona Miljus"]),
            newTag("Transfering my own money", "Banking bezgotovinsko placanje"),
            t("Kupovina valute"),
            t("Prodaja valute"),
            t("Pripis kamate"),
            t("Vodjenje platnog racuna"),
            t("Gotovinska isplata"),
            t("provizija za upit stanja"),
        ])
        
        
        f("Pharmacies", [
            newTag("Pharmacies", ["apoteka", "farm", "pharm", "vega", "prima", "zdravstvena ustanova a"])
        ])
        
        
        f("Healthcare", [
            newTag("Euromedik", "eurome"),
            t("Beo-Lab"),
            newTag("Konzilijum", "milica tatic pr"),
            newTag("Medigroup", ["medilab", "medigrou"]),
            newTag("Dr. Ristic", "dr ristic"),
        ])
        
        f("Salary", [
            // Salary
            t("Interventure"),
            t("Lotus Flare"),
        ])
        
        f("Furniture", [
            t("Emmezeta"),
            t("Ikea"),
            t("Forma Ideale"),
            t("Jysk"),
        ])
    }
    
    fileprivate func f(_ name: String, _ tags: [Tag]) {
        let filter = Filter(name: name, tags: tags, filteringRules: [])
        FilterStore.shared.add(filter)
    }
    
    fileprivate func t(_ name: String) -> Tag {
        let t = Tag(name, .substring(substring: name.lowercased()))
        TagStore.shared.add(t)
        return t
    }
    
    fileprivate func newTag(_ name: String, _ substring: String) -> Tag {
        let t = Tag(name, .substring(substring: substring))
        TagStore.shared.add(t)
        return t
    }

    fileprivate func newTag(_ name: String, _ substrings: [String]) -> Tag {
        let t = Tag(name, .substrings(substrings: substrings))
        TagStore.shared.add(t)
        return t
    }

    fileprivate func newTag(_ name: String, regex: String) -> Tag {
        let t = Tag(name, .regex(regex: regex))
        TagStore.shared.add(t)
        return t
    }
}
