// swift-tools-version:5.9
// =============================================================================
// Package.swift
// RunAnywhereCore - On-device ML inference framework
// Version: 0.0.1-dev.f72ccdc
//
// This package provides a unified XCFramework containing all backends:
//   - ONNX Runtime (Text Gen, Embeddings, STT, TTS, VAD, Diarization)
//   - LlamaCPP (Text Gen with Metal GPU acceleration)
//
// Usage (Swift Package Manager):
//   dependencies: [
//       .package(url: "https://github.com/RunanywhereAI/runanywhere-binaries.git", from: "0.0.1-dev.f72ccdc")
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
            url: "https://github.com/RunanywhereAI/runanywhere-binaries/releases/download/v0.0.1-dev.f72ccdc/RunAnywhereCore.xcframework.zip",
            checksum: "9eed495f4d3a977d37efcc60410d95308851c9657e2f5d57b23d9f1ad27c36af"
        ),
    ]
)
