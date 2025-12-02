// swift-tools-version:5.9
// =============================================================================
// Package.swift
// RunAnywhereCore - On-device ML inference framework
// Version: 0.0.1-dev.aade097
//
// This package provides a unified XCFramework containing all backends:
//   - ONNX Runtime (Text Gen, Embeddings, STT, TTS, VAD, Diarization)
//   - LlamaCPP (Text Gen with Metal GPU acceleration)
//
// Usage (Swift Package Manager):
//   dependencies: [
//       .package(url: "https://github.com/RunanywhereAI/runanywhere-binaries.git", from: "0.0.1-dev.aade097")
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
            url: "https://github.com/RunanywhereAI/runanywhere-binaries/releases/download/v0.0.1-dev.aade097/RunAnywhereCore.xcframework.zip",
            checksum: "b678cbfea242a2a9004c8d52cdf3637483b4a3f4376cd51ae939c3671f33dc5c"
        ),
    ]
)
