// swift-tools-version:5.9
// =============================================================================
// Package.swift
// RunAnywhereONNX - On-device ML inference framework
// Version: 0.0.1-dev.e2ac4eb
//
// Usage (Swift Package Manager):
//   dependencies: [
//       .package(url: "https://github.com/RunanywhereAI/runanywhere-binaries.git", from: "0.0.1-dev.e2ac4eb")
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
            url: "https://github.com/RunanywhereAI/runanywhere-binaries/releases/download/v0.0.1-dev.e2ac4eb/RunAnywhereONNX.xcframework.zip",
            checksum: "8f6d70707da24ae8a29722d190735e6f3b06b91b438989541761911295de3973"
        ),
    ]
)
