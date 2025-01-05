//
//  File.swift
//  AuthenticationModule
//
//  Created by AdVar on 04/01/2025.
//

import Foundation
import Combine

import Foundation

public protocol AuthenticationServiceProtocol: Actor {
    func login(with credentials: LoginCredentials) async throws -> Bool
    func register(with credentials: LoginCredentials) async throws -> Bool
}

public actor AuthenticationService: AuthenticationServiceProtocol {
    public init() {}
    
    public func login(with credentials: LoginCredentials) async throws -> Bool {
        // Simulate network delay
        try await Task.sleep(nanoseconds: 2 * 1_000_000_000)
        
        // For demo purposes, accept any email with password longer than 6 chars
        return credentials.password.count >= 6
    }
    
    public func register(with credentials: LoginCredentials) async throws -> Bool {
        try await Task.sleep(nanoseconds: 2 * 1_000_000_000)
        return credentials.password.count >= 6
    }
}
