//
//  File.swift
//  DashboardModule
//
//  Created by AdVar on 05/01/2025.
//

import SwiftUI

struct TransactionRowView: View {
    let transaction: TransactionModel
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(transaction.description)
                    .font(.headline)
                Text(transaction.date, style: .date)
                    .font(.caption)
            }
            
            Spacer()
            
            Text(transaction.type == .credit ? "+$\(transaction.amount, specifier: "%.2f")" : "-$\(transaction.amount, specifier: "%.2f")")
                .foregroundColor(transaction.type == .credit ? .green : .red)
        }
        .padding(.vertical, 8)
    }
}
