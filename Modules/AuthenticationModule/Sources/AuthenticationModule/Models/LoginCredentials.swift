//
//  File.swift
//  AuthenticationModule
//
//  Created by AdVar on 04/01/2025.
//

import Foundation

public struct LoginCredentials {
    public let email: String
    public let password: String
    
    public init(email: String, password: String) {
        self.email = email
        self.password = password
    }
}
