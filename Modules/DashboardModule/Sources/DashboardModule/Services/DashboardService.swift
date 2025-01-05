//
//  File.swift
//  DashboardModule
//
//  Created by AdVar on 05/01/2025.
//

import Foundation

public actor DashboardService {
    public init() {}
    
    public func fetchAccounts() async throws -> [AccountModel] {
        // Simulate API call
        try await Task.sleep(nanoseconds: 1_000_000_000)
        
        return [
            AccountModel(id: "1", accountType: "Checking", balance: 5234.56, accountNumber: "*****1234"),
            AccountModel(id: "2", accountType: "Savings", balance: 12435.78, accountNumber: "*****5678")
        ]
    }
    
    public func fetchRecentTransactions() async throws -> [TransactionModel] {
        try await Task.sleep(nanoseconds: 1_000_000_000)
        
        return [
            TransactionModel(id: "1", date: Date(), description: "Grocery Store", amount: 54.23, type: .debit),
            TransactionModel(id: "2", date: Date().addingTimeInterval(-86400), description: "Salary Deposit", amount: 2500.00, type: .credit)
        ]
    }
}
