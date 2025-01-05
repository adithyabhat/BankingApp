//
//  ContentView.swift
//  BankingApp
//
//  Created by AdVar on 03/01/2025.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Welcome to ModularBank")
                .font(.largeTitle)
            
            Text("Your Secure Banking Solution")
                .font(.subheadline)
                .foregroundColor(.gray)
        }
    }
}

#Preview {
    WelcomeView()
}
