//
//  File.swift
//  DashboardModule
//
//  Created by AdVar on 05/01/2025.
//

import Foundation
import CoreModule
import SwiftUI

@MainActor
public class DashboardViewModel: ViewModelProtocol {
    public enum Action {
        case refresh
        case selectAccount(AccountModel)
    }
    
    public struct State {
        var accounts: [AccountModel] = []
        var recentTransactions: [TransactionModel] = []
        var isLoading: Bool = false
        var error: String?
    }
    
    @Published public private(set) var state = State()
    private let service: DashboardService
    
    public init(service: DashboardService = DashboardService()) {
        self.service = service
        Task { await loadDashboardData() }
    }
    
    public func handle(_ action: Action) {
        switch action {
        case .refresh:
            Task { await loadDashboardData() }
        case .selectAccount(let account):
            // Handle account selection
            break
        }
    }
    
    private func loadDashboardData() async {
        state.isLoading = true
        state.error = nil
        
        do {
            async let accounts = service.fetchAccounts()
            async let transactions = service.fetchRecentTransactions()
            
            state.accounts = try await accounts
            state.recentTransactions = try await transactions
        } catch {
            state.error = error.localizedDescription
        }
        
        state.isLoading = false
    }
}
