//
//  File.swift
//  CoreModule
//
//  Created by AdVar on 03/01/2025.
//

import Foundation

public protocol DependencyProtocol {
    associatedtype Dependencies
    init(dependencies: Dependencies)
}
