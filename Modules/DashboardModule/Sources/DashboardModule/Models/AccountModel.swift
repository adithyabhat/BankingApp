//
//  File.swift
//  DashboardModule
//
//  Created by AdVar on 05/01/2025.
//

import Foundation

public struct AccountModel: Identifiable, Sendable {
    public let id: String
    public let accountType: String
    public let balance: Double
    public let accountNumber: String
    
    public init(id: String, accountType: String, balance: Double, accountNumber: String) {
        self.id = id
        self.accountType = accountType
        self.balance = balance
        self.accountNumber = accountNumber
    }
}
