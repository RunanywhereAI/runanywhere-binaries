// swift-tools-version:5.9
// =============================================================================
// Package.swift
// RunAnywhereONNX - On-device ML inference framework
// Version: 0.0.1-dev.e8dd719
//
// Usage (Swift Package Manager):
//   dependencies: [
//       .package(url: "https://github.com/RunanywhereAI/runanywhere-binaries.git", from: "0.0.1-dev.e8dd719")
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
            url: "https://github.com/RunanywhereAI/runanywhere-binaries/releases/download/v0.0.1-dev.e8dd719/RunAnywhereONNX.xcframework.zip",
            checksum: "3a56138368beae10742b4de1ea840d9dbac504a54c5b388d7dbd5bc3f6fcafd8"
        ),
    ]
)
