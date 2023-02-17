////
////  TagStore+Extensions.swift
////  ExpenseGroupPlayground
////
////  Created by Jovan Radivojsa on 17.2.23..
////
import Foundation

// MARK: - Initialize tags from code

extension TagStore {
    static var everythingTag: Tag = {
        let allTags = TagStore.shared.tags
        let tag = Tag(name: "Everythin", rules: [], tags: allTags)
        return tag
    }()
    
    public func initializeFromCode() {
        
        createTopLevelTag("Taxi services", [
            createTagWithMultipleSubstrings("CarGo", ["cargo", "go technologies"]),
            createTagWithSameSubstringRuleAsName("Yandex"),
            createTagWithSameSubstringRuleAsName("Naxi taksi")
        ])
        
        createTopLevelTag("Food delivery", [
            createTagWithNameAndRule("Glovo", "glovo"),
            createTagWithNameAndRule("Donesi", "plotun doo")
        ])
        
        
        createTopLevelTag("Groceries", [
            createTagWithNameAndRule("Lidl", "lidl"),
            createTagWithNameAndRule("Sumadija", "sumadija"),
            createTagWithNameAndRule("Aroma", "aroma"),
            createTagWithMultipleSubstrings("Idea", ["MP542", "MP139", "MP102", "MP295", "MP321", "MP540", "MP035", "prodavnica br"]),
            createTagWithNameAndRule("Vero", "vero"),
            createTagWithNameAndRule("Maxi", "maxi"),
            createTagWithNameAndRule("Tempo", "tempo"),
            createTagWithNameAndRule("Trivuk", "trivuk"),
            createTagWithNameAndRule("Paladini", "paladini"),
            createTagWithNameAndRule("Aman", "aman"),
            createTagWithNameAndRule("UniverExport", "univer"),
            createTagWithNameAndRule("Sunce", "qvattro"),
            createTagWithSameSubstringRuleAsName("C Market"),
            createTagWithSameSubstringRuleAsName("swisslion"),
            createTagWithNameAndRule("Drink Store", "andrax-prod"),
            createTagWithNameAndRule("Super Diskont", "scb gandijeva"),
        ])
        
        
        createTopLevelTag("Clothes", [
            createTagWithNameAndRule("C & A", "c & a"),
            createTagWithNameAndRule("Reserved", "reserved"),
            newTag("Zara", regex: "^zara\\s"),
            createTagWithNameAndRule("Koton", "koton"),
            createTagWithNameAndRule("Cropp", "cropp"),
            createTagWithMultipleSubstrings("Peek & Cloppenburg", ["rs37", "peek and cloppenburg"]),
            createTagWithSameSubstringRuleAsName("New Yorker"),
            createTagWithSameSubstringRuleAsName("Pull and Bear"),
            createTagWithSameSubstringRuleAsName("H&M"),
            createTagWithSameSubstringRuleAsName("Bershka"),
        ])
        
        
        createTopLevelTag("Shoes", [
            createTagWithNameAndRule("Deichmann", "deichmann")
        ])
        
        
        createTopLevelTag("Sport", [
            createTagWithNameAndRule("PanSport", "pansport"),
            createTagWithNameAndRule("N Sport", "n sport"),
            createTagWithNameAndRule("InterSport", "intersport"),
            createTagWithNameAndRule("Planeta Sport", "planeta sport"),
            createTagWithSameSubstringRuleAsName("Emergo Sport"),
            createTagWithSameSubstringRuleAsName("Decathlon")
        ])
        
        
        createTopLevelTag("Sport Centers", [
            createTagWithNameAndRule("SC Master", "master doo")
        ])
        
        
        createTopLevelTag("Gas stations", [
            createTagWithNameAndRule("MOL", "mol serbia"),
            createTagWithNameAndRule("EKO", "eko serbia"),
            createTagWithNameAndRule("EURO Petrol", "euro petrol"),
            createTagWithMultipleSubstrings("NIS", ["508 novi beograd", "648 dzona kenedija", "657 Zarkovo", "980 BS", "982 BS", "NIS AD-TOSIN", "525 francuska beograd"]),
            createTagWithNameAndRule("Lukoil", "lukoil"),
            createTagWithNameAndRule("OMV", "omv"),
        ])
        
        
        createTopLevelTag("Road", [
            createTagWithMultipleSubstrings("Road tolls", ["jp putevi"])
        ])
        
        
        createTopLevelTag("Subscriptions", [
            createTagWithNameAndRule("Netflix", "netflix"),
            createTagWithNameAndRule("Amazon", "amazon"),
            createTagWithNameAndRule("HBO", "hbo"),
            createTagWithNameAndRule("Google", "google"),
            createTagWithNameAndRule("Apple", "apple"),
            createTagWithSameSubstringRuleAsName("Crunchyroll"),
            createTagWithSameSubstringRuleAsName("MyPatrol"),
        ])
        
        
        createTopLevelTag("Online shopping", [
            createTagWithNameAndRule("Aliexpress", "aliexpress"),
            createTagWithSameSubstringRuleAsName("CDKeys"),
            createTagWithSameSubstringRuleAsName("Paypal"),
            createTagWithSameSubstringRuleAsName("KupujemProdajem"),
        ])
        
        
        createTopLevelTag("Restaurants and caffes", [
            createTagWithNameAndRule("Stari Pingvin", "stari pingvin"),
            createTagWithNameAndRule("Skroz Dobra Pekara", "trgocentar"),
            createTagWithMultipleSubstrings("Pekara Domino", ["str prkara domino", "pekara domino"]),
            createTagWithNameAndRule("Kineski Trzni centar na Bezanijskoj Kosi", "joy city 2018 doo"),
            createTagWithSameSubstringRuleAsName("Riddle bar"),
            createTagWithSameSubstringRuleAsName("Dogma"),
            createTagWithSameSubstringRuleAsName("Docker"),
            createTagWithSameSubstringRuleAsName("Restoran Kesten"),
            createTagWithSameSubstringRuleAsName("Restoran Godo"),
            createTagWithSameSubstringRuleAsName("Zapata"),
            createTagWithSameSubstringRuleAsName("Hleb i Kifle"),
            createTagWithSameSubstringRuleAsName("Tanker"),
            createTagWithSameSubstringRuleAsName("Tri Sesira"),
            createTagWithSameSubstringRuleAsName("Thinkers"),
            createTagWithSameSubstringRuleAsName("Bella Napoli"),
            createTagWithSameSubstringRuleAsName("Jolly Roger"),
            createTagWithMultipleSubstrings("Ben Akiba", ["ben akiba", "benakiba"]),
            createTagWithSameSubstringRuleAsName("Gelato"),
            createTagWithSameSubstringRuleAsName("Palilulac"),
            createTagWithSameSubstringRuleAsName("Gondola"),
            createTagWithSameSubstringRuleAsName("Obrock"),
            createTagWithSameSubstringRuleAsName("Cezar"),
            createTagWithSameSubstringRuleAsName("Asia Food"),
            createTagWithSameSubstringRuleAsName("SoulFood"),
            createTagWithSameSubstringRuleAsName("NiceFood"),
            createTagWithSameSubstringRuleAsName("Havarija"),
            createTagWithSameSubstringRuleAsName("Burger Bar"),
            createTagWithSameSubstringRuleAsName("Mediterano"),
            createTagWithSameSubstringRuleAsName("Mim Team Food"),
            createTagWithSameSubstringRuleAsName("Makao"),
            createTagWithSameSubstringRuleAsName("Pizza Bar"),
            createTagWithSameSubstringRuleAsName("McDonald's"),
            createTagWithSameSubstringRuleAsName("Zabac"),
            createTagWithSameSubstringRuleAsName("Smash Burgers"),
            createTagWithNameAndRule("KC Grad", "kulturni front"),
            createTagWithNameAndRule("Saint", "Finest food"),
            createTagWithNameAndRule("Lorenzo & Kakalamba", "beer food options"),
            createTagWithSameSubstringRuleAsName("zaokret"),
            createTagWithSameSubstringRuleAsName("Kota 70"),
            createTagWithMultipleSubstrings("Sandwich Store", ["barel grupa", "nikola dordevic pr"]),
            createTagWithNameAndRule("Blok Kafe", "sormal limited kafe"),
            createTagWithNameAndRule("Silosi", "ponta 011 doo"),
            createTagWithNameAndRule("20/44", "ur club 20 kroz 44"),
            createTagWithNameAndRule("Znaci pub", "Ivan Petek PR znaci"),
            createTagWithSameSubstringRuleAsName("Balkan Bet"),
        ])
        
        
        createTopLevelTag("Parking", [
            createTagWithSameSubstringRuleAsName("Parking")
        ])
        
        
        createTopLevelTag("Various Stores", [
            createTagWithNameAndRule("DM Store", "dm filijala"),
            createTagWithSameSubstringRuleAsName("Vulkan"),
            createTagWithSameSubstringRuleAsName("PC Centar"),
            createTagWithSameSubstringRuleAsName("Uradi Sam"),
            createTagWithNameAndRule("Umbrella Vapes", "umbrella"),
            createTagWithSameSubstringRuleAsName("Laguna"),
            createTagWithSameSubstringRuleAsName("Zlatara Andrejevic"),
            createTagWithSameSubstringRuleAsName("Vodovod"),
            createTagWithSameSubstringRuleAsName("Gigatron"),
            createTagWithSameSubstringRuleAsName("VIP Sistem"),
            createTagWithSameSubstringRuleAsName("Coral"),
            createTagWithSameSubstringRuleAsName("Tehnomedia"),
            createTagWithNameAndRule("Moj Kiosk", "stampa sistem"),
            createTagWithSameSubstringRuleAsName("Lyra"),
            createTagWithSameSubstringRuleAsName("Kanibal"),
            createTagWithNameAndRule("Maus Car Center", "maus"),
            createTagWithSameSubstringRuleAsName("Okov"),
            createTagWithNameAndRule("Intermezzo Trafika", "intermezzo"),
            createTagWithNameAndRule("Inmedio trafika Zemun", "inmedio"),
            createTagWithNameAndRule("TMNT Blok 63 prodavnica", "t.m.n.t plus novi beograd"),
            createTagWithNameAndRule("Tehnomanija", "TEH "),
            createTagWithSameSubstringRuleAsName("Ekomes DOO"),
            createTagWithSameSubstringRuleAsName("SZTR Djurdjevic radnja surcin"),
        ])
        
        
        createTopLevelTag("Bills", [
            createTagWithSameSubstringRuleAsName("Infostan"),
            createTagWithNameAndRule("EPS", "jp eps"),
            createTagWithMultipleSubstrings("Telekom Srbija", ["telekom srbija", "teleko beograd"]),
            createTagWithNameAndRule("Alta menjacnica", "alta"),
        ])
        
        createTopLevelTag("ATM", [
            createTagWithMultipleSubstrings("ATM", ["atm", "bankomat", "117/piramida", "13/bgd immocentar", "bgd immocentar", "beograd blok 63 beograd", "AIKN0", "Raiffeisen", "Intesa"])
        ])
        
        createTopLevelTag("Money Transfers", [
            createTagWithMultipleSubstrings("Transfering money to people", ["transakcije po nalogu", "druge transakcije", "petar stankovic", "dario mirovic", "filip zemljak", "sonja novakovic", "dusan petrovic", "dejan borojevic", "nikola petrovic", "dejan mitrovic", "srdan majstorovic", "Ivona Miljus"]),
            createTagWithNameAndRule("Transfering my own money", "Banking bezgotovinsko placanje"),
            createTagWithSameSubstringRuleAsName("Kupovina valute"),
            createTagWithSameSubstringRuleAsName("Prodaja valute"),
            createTagWithSameSubstringRuleAsName("Pripis kamate"),
            createTagWithSameSubstringRuleAsName("Vodjenje platnog racuna"),
            createTagWithSameSubstringRuleAsName("Gotovinska isplata"),
            createTagWithSameSubstringRuleAsName("provizija za upit stanja"),
        ])
        
        
        createTopLevelTag("Pharmacies", [
            createTagWithMultipleSubstrings("Pharmacies", ["apoteka", "farm", "pharm", "vega", "prima", "zdravstvena ustanova a"])
        ])
        
        
        createTopLevelTag("Healthcare", [
            createTagWithNameAndRule("Euromedik", "eurome"),
            createTagWithSameSubstringRuleAsName("Beo-Lab"),
            createTagWithNameAndRule("Konzilijum", "milica tatic pr"),
            createTagWithMultipleSubstrings("Medigroup", ["medilab", "medigrou"]),
            createTagWithNameAndRule("Dr. Ristic", "dr ristic"),
        ])
        
        createTopLevelTag("Salary", [
            // Salary
            createTagWithSameSubstringRuleAsName("Interventure"),
            createTagWithSameSubstringRuleAsName("Lotus Flare"),
        ])
        
        createTopLevelTag("Furniture", [
            createTagWithSameSubstringRuleAsName("Emmezeta"),
            createTagWithSameSubstringRuleAsName("Ikea"),
            createTagWithSameSubstringRuleAsName("Forma Ideale"),
            createTagWithSameSubstringRuleAsName("Jysk"),
        ])
    }
    
    fileprivate func createTopLevelTag(_ name: String, _ tags: [Tag])  {
        let tag = Tag(name: name, rules: [], tags: tags)
        TagStore.shared.add(tag)
    }
    
    fileprivate func createTagWithSameSubstringRuleAsName(_ name: String) -> Tag {
        return createTagWithNameAndRule(name, name.lowercased())
    }
    
    fileprivate func createTagWithNameAndRule(_ name: String, _ substring: String) -> Tag {
        let t = Tag(name, .substring(substring: substring))
        TagStore.shared.add(t)
        return t
    }

    fileprivate func createTagWithMultipleSubstrings(_ name: String, _ substrings: [String]) -> Tag {
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
