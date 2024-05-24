// swift-tools-version:5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LodyExtensions",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "LodyExtensions",
            type: .static,
            targets: ["LodyExtensions"]),
        .library(
            name: "LodyExtensions-Dynamic",
            type: .dynamic,
            targets: ["LodyExtensions"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "LodyExtensions",
            dependencies: []),
        .testTarget(
            name: "LodyExtensionsTests",
            dependencies: ["LodyExtensions"]),
    ],
    swiftLanguageVersions: [.v5]
)
