//
//  File.swift
//  AuthenticationModule
//
//  Created by AdVar on 04/01/2025.
//

import Foundation

public enum AuthenticationState: Equatable {
    case idle
    case loading
    case success
    case error(String)
}
