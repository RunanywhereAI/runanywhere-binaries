// swift-tools-version:5.9
// =============================================================================
// Package.swift
// RunAnywhere Binary Distribution
// Version: 0.0.1-dev.cacec5c
//
// This package provides pre-built XCFrameworks for RunAnywhere backends.
// Choose the backend(s) that best fit your use case:
//
//   - RunAnywhereONNX: ONNX Runtime backend (recommended for most use cases)
//   - RunAnywhereCoreML: CoreML backend (Apple Neural Engine optimization)
//   - RunAnywhereTFLite: TensorFlow Lite backend
//   - RunAnywhereAll: All backends combined
//
// Generated automatically - do not edit manually
// =============================================================================

import PackageDescription

let version = "0.0.1-dev.cacec5c"
let baseURL = "https://github.com/RunanywhereAI/runanywhere-binaries/releases/download/v0.0.1-dev.cacec5c"

let package = Package(
    name: "RunAnywhere",
    platforms: [
        .iOS(.v15),
        .macOS(.v12)
    ],
    products: [
        // ONNX Runtime backend - recommended for most use cases
        .library(
            name: "RunAnywhereONNX",
            targets: ["RunAnywhereONNXWrapper", "RunAnywhereONNXBinary"]
        ),
    ],
    targets: [
        // =====================================================================
        // ONNX Runtime Backend
        // =====================================================================
        .binaryTarget(
            name: "RunAnywhereONNXBinary",
            url: "\(baseURL)/RunAnywhereONNX.xcframework.zip",
            checksum: "155a1864671a1c119ac3925247b8256727693a4c6a5888d8b2f41b17175267dc"
        ),
        .target(
            name: "RunAnywhereONNXWrapper",
            dependencies: ["RunAnywhereONNXBinary"],
            path: "Sources/ONNX",
            sources: ["RunAnywhereONNX.swift"]
        ),

    ]
)
