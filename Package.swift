// swift-tools-version:5.9
// =============================================================================
// Package.swift
// RunAnywhereONNX - On-device ML inference framework
// Version: 0.0.1-dev.6af923c
//
// Usage (Swift Package Manager):
//   dependencies: [
//       .package(url: "https://github.com/RunanywhereAI/runanywhere-binaries.git", from: "0.0.1-dev.6af923c")
//   ]
//   targets: [
//       .target(name: "YourApp", dependencies: ["RunAnywhereONNX"])
//   ]
//
// Generated automatically - do not edit manually
// =============================================================================

import PackageDescription

let package = Package(
    name: "RunAnywhereONNX",
    platforms: [
        .iOS(.v15),
        .macOS(.v12)
    ],
    products: [
        .library(
            name: "RunAnywhereONNX",
            targets: ["RunAnywhereONNX"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "RunAnywhereONNX",
            url: "https://github.com/RunanywhereAI/runanywhere-binaries/releases/download/v0.0.1-dev.6af923c/RunAnywhereONNX.xcframework.zip",
            checksum: "41689bd26b462639f57e225b2f55f4ca71885d073345f1ab8e14f708cb258c59"
        ),
    ]
)
