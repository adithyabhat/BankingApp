//
//  AppCoordinator.swift
//  BankingApp
//
//  Created by AdVar on 04/01/2025.
//

import SwiftUI
import CoreModule
import AuthenticationModule
import DashboardModule

class AppCoordinator: CoordinatorProtocol {
    // Stores any child coordinators (like login, dashboard, etc.)
    var childCoordinators: [CoordinatorProtocol] = []

    // The window where we'll show our app
    private let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        showLogin()
    }
    
    private func showLogin() {
        let loginView = LoginView { [weak self] in
            self?.handleLoginSuccess()
        }
        let hostingController = UIHostingController(rootView: loginView)
        window.rootViewController = hostingController
        window.makeKeyAndVisible()
    }

    private func handleLoginSuccess() {
        let dashboardView = DashboardView()
        let hostingController = UIHostingController(rootView: dashboardView)
        window.rootViewController = hostingController
    }

    
    func finish() {
        // Clean up any resources
        childCoordinators.removeAll()
    }
}
