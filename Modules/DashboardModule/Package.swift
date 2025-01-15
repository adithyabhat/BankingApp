// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DashboardModule",
    platforms: [
        .iOS(.v16),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "DashboardModule",
            targets: ["DashboardModule"]),
    ],
    dependencies: [
        .package(path: "../CoreModule")
    ],
    targets: [
        .target(
            name: "DashboardModule",
            dependencies: ["CoreModule"]),
        .testTarget(
            name: "DashboardModuleTests",
            dependencies: ["DashboardModule"])
    ]
)
