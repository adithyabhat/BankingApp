//
//  File.swift
//  CoreModule
//
//  Created by AdVar on 03/01/2025.
//

import Foundation

public protocol CoordinatorProtocol: AnyObject {
    var childCoordinators: [CoordinatorProtocol] { get set }
    func start()
    func finish()
}
