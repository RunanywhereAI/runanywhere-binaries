// swift-tools-version:5.9
// =============================================================================
// Package.swift
// RunAnywhereONNX - On-device ML inference framework
// Version: 0.0.1-dev.27a4832
//
// Usage (Swift Package Manager):
//   dependencies: [
//       .package(url: "https://github.com/RunanywhereAI/runanywhere-binaries.git", from: "0.0.1-dev.27a4832")
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
            url: "https://github.com/RunanywhereAI/runanywhere-binaries/releases/download/v0.0.1-dev.27a4832/RunAnywhereONNX.xcframework.zip",
            checksum: "0ee5b56451848d05670263df32b1eeec49b526f552363d200a47ce16aff35df7"
        ),
    ]
)
