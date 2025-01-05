//
//  File.swift
//  DashboardModule
//
//  Created by AdVar on 05/01/2025.
//

import Foundation
import SwiftUI

public struct DashboardView: View {
    @StateObject private var viewModel: DashboardViewModel
    
    public init(viewModel: DashboardViewModel = DashboardViewModel()) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    public var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    accountsSection
                    transactionsSection
                }
                .padding()
            }
            .navigationTitle("Dashboard")
            .refreshable {
                viewModel.handle(.refresh)
            }
            .overlay {
                if viewModel.state.isLoading {
                    ProgressView()
                }
            }
        }
    }
    
    private var accountsSection: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Your Accounts")
                .font(.headline)
            
            ForEach(viewModel.state.accounts) { account in
                AccountCardView(account: account)
            }
        }
    }
    
    private var transactionsSection: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Recent Transactions")
                .font(.headline)
            
            ForEach(viewModel.state.recentTransactions) { transaction in
                TransactionRowView(transaction: transaction)
            }
        }
    }
}
