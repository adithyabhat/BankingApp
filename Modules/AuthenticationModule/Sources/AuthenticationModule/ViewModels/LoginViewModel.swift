//
//  File.swift
//  AuthenticationModule
//
//  Created by AdVar on 04/01/2025.
//

import CoreModule
import SwiftUI

@MainActor
public class LoginViewModel: ViewModelProtocol {
    public enum Action {
        case updateEmail(String)
        case updatePassword(String)
        case login
    }
    
    @Published public private(set) var state: AuthenticationState = .idle
    @Published public private(set) var email: String = ""
    @Published public private(set) var password: String = ""
    
    private let authService: AuthenticationServiceProtocol
    
    public init(authService: AuthenticationServiceProtocol = AuthenticationService()) {
        self.authService = authService
    }
    
    public func handle(_ action: Action) {
        switch action {
        case .updateEmail(let email):
            self.email = email
        case .updatePassword(let password):
            self.password = password
        case .login:
            performLogin()
        }
    }
    
    private func performLogin() {
        Task {
            state = .loading
            do {
                let credentials = LoginCredentials(email: email, password: password)
                let success = try await authService.login(with: credentials)
                state = success ? .success : .error("Invalid credentials")
            } catch {
                state = .error(error.localizedDescription)
            }
        }
    }
}
