// swift-tools-version:5.9
// =============================================================================
// Package.swift
// RunAnywhereCore - On-device ML inference framework
// Version: 0.0.1-dev.fcf1715
//
// This package provides a unified XCFramework containing all backends:
//   - ONNX Runtime (Text Gen, Embeddings, STT, TTS, VAD, Diarization)
//   - LlamaCPP (Text Gen with Metal GPU acceleration)
//
// Usage (Swift Package Manager):
//   dependencies: [
//       .package(url: "https://github.com/RunanywhereAI/runanywhere-binaries.git", from: "0.0.1-dev.fcf1715")
//   ]
//   targets: [
//       .target(name: "YourApp", dependencies: ["RunAnywhereCore"])
//   ]
//
// Generated automatically - do not edit manually
// =============================================================================

import PackageDescription

let package = Package(
    name: "RunAnywhereCore",
    platforms: [
        .iOS(.v15),
        .macOS(.v12)
    ],
    products: [
        .library(
            name: "RunAnywhereCore",
            targets: ["RunAnywhereCore"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "RunAnywhereCore",
            url: "https://github.com/RunanywhereAI/runanywhere-binaries/releases/download/v0.0.1-dev.fcf1715/RunAnywhereCore.xcframework.zip",
            checksum: "796d01bccadf0f752267703cff3d3ce17b8be39c2039ee5976422b974d45c828"
        ),
    ]
)
