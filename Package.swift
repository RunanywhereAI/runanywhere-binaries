// swift-tools-version:5.9
// =============================================================================
// Package.swift
// RunAnywhereCore - On-device ML inference framework
// Version: 0.0.1-dev.eba894a
//
// This package provides a unified XCFramework containing all backends:
//   - ONNX Runtime (Text Gen, Embeddings, STT, TTS, VAD, Diarization)
//   - LlamaCPP (Text Gen with Metal GPU acceleration)
//
// Usage (Swift Package Manager):
//   dependencies: [
//       .package(url: "https://github.com/RunanywhereAI/runanywhere-binaries.git", from: "0.0.1-dev.eba894a")
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
            url: "https://github.com/RunanywhereAI/runanywhere-binaries/releases/download/v0.0.1-dev.eba894a/RunAnywhereCore.xcframework.zip",
            checksum: "77e0c3ca58315f84233cf3a30976cb1db711feeb74be522b5c59e865898e11af"
        ),
    ]
)
