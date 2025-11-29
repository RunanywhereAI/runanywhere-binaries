// swift-tools-version:5.9
// =============================================================================
// Package.swift
// RunAnywhereONNX - On-device ML inference framework
// Version: 0.0.1-dev.4767337
//
// Usage (Swift Package Manager):
//   dependencies: [
//       .package(url: "https://github.com/RunanywhereAI/runanywhere-binaries.git", from: "0.0.1-dev.4767337")
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
            url: "https://github.com/RunanywhereAI/runanywhere-binaries/releases/download/v0.0.1-dev.4767337/RunAnywhereONNX.xcframework.zip",
            checksum: "c054210880498119a7f61ffa2f922effa8e3c92513085f5c495011ea301f776a"
        ),
    ]
)
