// swift-tools-version:5.9
// =============================================================================
// Package.swift
// RunAnywhere Binary Distribution
//
// This is a TEMPLATE - actual checksums are populated during release.
// =============================================================================

import PackageDescription

let version = "0.0.0"
let baseURL = "https://github.com/RunAnywhereAI/runanywhere-binaries/releases/download/v\(version)"

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
        // CoreML backend - optimized for Apple Neural Engine
        .library(
            name: "RunAnywhereCoreML",
            targets: ["RunAnywhereCoreMLWrapper", "RunAnywhereCoreMLBinary"]
        ),
        // TensorFlow Lite backend
        .library(
            name: "RunAnywhereTFLite",
            targets: ["RunAnywhereTFLiteWrapper", "RunAnywhereTFLiteBinary"]
        ),
        // All backends combined
        .library(
            name: "RunAnywhereAll",
            targets: ["RunAnywhereAll"]
        ),
    ],
    targets: [
        // =====================================================================
        // ONNX Runtime Backend
        // =====================================================================
        .binaryTarget(
            name: "RunAnywhereONNXBinary",
            url: "\(baseURL)/RunAnywhereONNX.xcframework.zip",
            checksum: "PLACEHOLDER_ONNX_CHECKSUM"
        ),
        .target(
            name: "RunAnywhereONNXWrapper",
            dependencies: ["RunAnywhereONNXBinary"],
            path: "Sources/ONNX",
            sources: ["RunAnywhereONNX.swift"]
        ),

        // =====================================================================
        // CoreML Backend (Apple Neural Engine)
        // =====================================================================
        .binaryTarget(
            name: "RunAnywhereCoreMLBinary",
            url: "\(baseURL)/RunAnywhereCoreML.xcframework.zip",
            checksum: "PLACEHOLDER_COREML_CHECKSUM"
        ),
        .target(
            name: "RunAnywhereCoreMLWrapper",
            dependencies: ["RunAnywhereCoreMLBinary"],
            path: "Sources/CoreML",
            sources: ["RunAnywhereCoreML.swift"]
        ),

        // =====================================================================
        // TensorFlow Lite Backend
        // =====================================================================
        .binaryTarget(
            name: "RunAnywhereTFLiteBinary",
            url: "\(baseURL)/RunAnywhereTFLite.xcframework.zip",
            checksum: "PLACEHOLDER_TFLITE_CHECKSUM"
        ),
        .target(
            name: "RunAnywhereTFLiteWrapper",
            dependencies: ["RunAnywhereTFLiteBinary"],
            path: "Sources/TFLite",
            sources: ["RunAnywhereTFLite.swift"]
        ),

        // =====================================================================
        // Umbrella target (all backends)
        // =====================================================================
        .target(
            name: "RunAnywhereAll",
            dependencies: [
                "RunAnywhereONNXWrapper",
                "RunAnywhereCoreMLWrapper",
                "RunAnywhereTFLiteWrapper",
            ],
            path: "Sources/All",
            sources: ["RunAnywhereAll.swift"]
        ),
    ]
)
