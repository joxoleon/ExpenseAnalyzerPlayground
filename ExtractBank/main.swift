import Foundation
import PDFKit



// MARK: - Main

Bank.shared.initialize()
print(Bank.shared.allExpenses.count)
let expense = Bank.shared.allExpenses.first!
print(expense.expenseDescription)
print(expense.date)

//let cargoGroup = ExpenseGroup(tag: .cargo)
//print(cargoGroup.defaultDescription)
//
//let glovoGroup = ExpenseGroup(tag: .glovo)
//print(glovoGroup.defaultDescription)
//
//let groceries = ExpenseGroup(tag: .groceries)
//print(groceries.defaultDescription)
//
//let clothes = ExpenseGroup(tag: .clothes)
//print(clothes.defaultDescription)
//
//let income = ExpenseGroup(tag: .income)
//print(income.defaultDescription)
//
//let atm = ExpenseGroup(tag: .atm)
//print(atm.defaultDescription)
//
//let malls = ExpenseGroup(tag: .malls)
//print(malls.defaultDescription)
//
//let pool = ExpenseGroup(tag: .pool)
//print(pool.defaultDescription)
//
//let sumadija = ExpenseGroup(tag: .sumadija)
//print(sumadija.defaultDescription)
//
//let gas = ExpenseGroup(tag: .gasStations)
//print(gas.defaultDescription)
//
//let aliexpress = ExpenseGroup(tag: .aliexpress)
//print(aliexpress.defaultDescription)
//
//let subscriptions = ExpenseGroup(tag: .subscriptions)
//print(subscriptions.defaultDescription)

//Bank.shared.saveToStorage()
//Bank.shared.loadFromStorage()
//
//Bank.shared.saveToStorage()
