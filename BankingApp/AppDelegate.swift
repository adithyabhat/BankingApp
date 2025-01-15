//
//  AppDelegate.swift
//  BankingApp
//
//  Created by AdVar on 05/01/2025.
//

import Foundation
import UIKit

class AppDelegate: NSObject, UIApplicationDelegate {
    private var coordinator: AppCoordinator?
    private var appState = AppState()
    
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        return true
    }
    
    func application(
        _ application: UIApplication,
        configurationForConnecting connectingSceneSession: UISceneSession,
        options: UIScene.ConnectionOptions
    ) -> UISceneConfiguration {
        let configuration = UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
        configuration.delegateClass = SceneDelegate.self
        return configuration
    }
}
