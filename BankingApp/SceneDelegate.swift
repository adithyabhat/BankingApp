//
//  SceneDelegate.swift
//  BankingApp
//
//  Created by AdVar on 05/01/2025.
//

import Foundation
import UIKit
import SwiftUI

class SceneDelegate: NSObject, UIWindowSceneDelegate {
    var window: UIWindow?
    private var coordinator: AppCoordinator?
    private var appState = AppState()
    
    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        guard let windowScene = scene as? UIWindowScene else { return }
        
        let window = UIWindow(windowScene: windowScene)
        self.window = window
        
        coordinator = AppCoordinator(window: window)
        coordinator?.start()
    }
}
