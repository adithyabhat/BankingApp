//
//  BankingAppApp.swift
//  BankingApp
//
//  Created by AdVar on 03/01/2025.
//

import SwiftUI

@main
struct ModularBankApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) private var appDelegate
    @StateObject private var appState = AppState()
    
    var body: some Scene {
        WindowGroup {
            EmptyView()
                .environmentObject(appState)
        }
    }
}


// AppState.swift
class AppState: ObservableObject {
    @Published var isAuthenticated = false
}
