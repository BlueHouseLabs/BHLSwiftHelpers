// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BHLSwiftHelpers",
    products: [
        .library(
            name: "BHLSwiftHelpers",
            targets: ["BHLSwiftHelpers"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "BHLSwiftHelpers",
            dependencies: []),
        .testTarget(
            name: "BHLSwiftHelpersTests",
            dependencies: ["BHLSwiftHelpers"]),
    ]
)
