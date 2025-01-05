//
//  File.swift
//  CoreModule
//
//  Created by AdVar on 03/01/2025.
//

import Foundation
import SwiftUI
import Combine

@MainActor // Add this to make the protocol main actor-isolated
public protocol ViewModelProtocol: ObservableObject {
    associatedtype State
    associatedtype Action
    
    var state: State { get }
    func handle(_ action: Action)
}
