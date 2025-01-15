//
//  File.swift
//  DashboardModule
//
//  Created by AdVar on 05/01/2025.
//

import Foundation

public struct TransactionModel: Identifiable, Sendable {
    public let id: String
    public let date: Date
    public let description: String
    public let amount: Double
    public let type: TransactionType
    
    public enum TransactionType: Sendable {
        case credit
        case debit
    }
    
    public init(id: String, date: Date, description: String, amount: Double, type: TransactionType) {
        self.id = id
        self.date = date
        self.description = description
        self.amount = amount
        self.type = type
    }
}
