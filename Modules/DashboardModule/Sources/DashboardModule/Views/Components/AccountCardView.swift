//
//  File.swift
//  DashboardModule
//
//  Created by AdVar on 05/01/2025.
//

import SwiftUI

struct AccountCardView: View {
    let account: AccountModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(account.accountType)
                .font(.headline)
            Text(account.accountNumber)
                .font(.subheadline)
            Text("$\(account.balance, specifier: "%.2f")")
                .font(.title2)
                .bold()
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(.systemGray6))
        .cornerRadius(10)
    }
}

