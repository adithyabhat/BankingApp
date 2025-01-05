// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AuthenticationModule",
    platforms: [
        .iOS(.v16),
        .macOS(.v10_15)
    ],
    products: [
            .library(
                name: "AuthenticationModule",
                targets: ["AuthenticationModule"]),
        ],
        dependencies: [
            .package(path: "../CoreModule")
        ],
        targets: [
            .target(
                name: "AuthenticationModule",
                dependencies: ["CoreModule"]),
            .testTarget(
                name: "AuthenticationModuleTests",
                dependencies: ["AuthenticationModule"])
        ]
)
