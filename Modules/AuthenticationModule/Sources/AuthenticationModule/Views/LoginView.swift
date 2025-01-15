//
//  File.swift
//  AuthenticationModule
//
//  Created by AdVar on 04/01/2025.
//

import SwiftUI

public struct LoginView: View {
    @StateObject private var viewModel: LoginViewModel
    private let onLoginSuccess: () -> Void
    
    public init(
        viewModel: LoginViewModel = LoginViewModel(),
        onLoginSuccess: @escaping () -> Void
    ) {
        _viewModel = StateObject(wrappedValue: viewModel)
        self.onLoginSuccess = onLoginSuccess
        
    }
    
    public var body: some View {
        VStack(spacing: 20) {
            Text("Welcome Back")
                .font(.largeTitle)
            
            TextField("Email", text: Binding(
                get: { viewModel.email },
                set: { viewModel.handle(.updateEmail($0)) }
            ))
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .autocapitalization(.none)
            
            SecureField("Password", text: Binding(
                get: { viewModel.password },
                set: { viewModel.handle(.updatePassword($0)) }
            ))
            .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button("Login") {
                viewModel.handle(.login)
            }
            .disabled(viewModel.state == .loading)
            
            if case .loading = viewModel.state {
                ProgressView()
            }
            
            if case .error(let message) = viewModel.state {
                Text(message)
                    .foregroundColor(.red)
            }
        }
        .padding()
        .onChange(of: viewModel.state) { state in
            if case .success = state {
                onLoginSuccess()
            }
        }
    }
}
