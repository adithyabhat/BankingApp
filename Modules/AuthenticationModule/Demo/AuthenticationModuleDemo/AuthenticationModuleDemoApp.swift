//
//  AuthenticationModuleDemoApp.swift
//  AuthenticationModuleDemo
//
//  Created by AdVar on 07/01/2025.
//

import SwiftUI
import AuthenticationModule

@main
struct AuthenticationModuleDemoApp: App {
    var body: some Scene {
        WindowGroup {
            LoginView {
                print("Login Success!")
            }
        }
    }
}
