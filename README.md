# RunAnywhere Binaries

Pre-built XCFrameworks for the [RunAnywhere](https://github.com/RunAnywhereAI/runanywhere) on-device ML inference framework.

## Installation

### Swift Package Manager (Recommended)

Add to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/RunAnywhereAI/runanywhere-binaries.git", from: "1.0.0")
]
```

Then add the backend you need to your target:

```swift
.target(
    name: "MyApp",
    dependencies: [
        // Choose one or more backends:
        .product(name: "RunAnywhereONNX", package: "runanywhere-binaries"),
        // .product(name: "RunAnywhereCoreML", package: "runanywhere-binaries"),
        // .product(name: "RunAnywhereTFLite", package: "runanywhere-binaries"),
    ]
)
```

Or in Xcode: File → Add Package Dependencies → Enter repository URL.

### CocoaPods

Add to your `Podfile`:

```ruby
# Default ONNX backend
pod 'RunAnywhere'

# Or specific backend(s)
pod 'RunAnywhere/ONNX'
pod 'RunAnywhere/CoreML'
pod 'RunAnywhere/TFLite'

# All backends
pod 'RunAnywhere/All'
```

Then run:

```bash
pod install
```

### Manual Download

Download XCFrameworks from [Releases](https://github.com/RunAnywhereAI/runanywhere-binaries/releases):

1. Download the `.xcframework.zip` for your chosen backend
2. Verify the checksum: `shasum -a 256 -c checksums.txt`
3. Unzip and drag into your Xcode project
4. In Build Phases → Link Binary With Libraries, add:
   - Foundation.framework
   - CoreML.framework (for ONNX/CoreML)
   - Accelerate.framework
   - Metal.framework (for CoreML/TFLite)

## Available Backends

| Backend | Use Case | Size* |
|---------|----------|-------|
| **ONNX** | General purpose, cross-platform models | ~50MB |
| **CoreML** | Apple Neural Engine optimization | ~5MB |
| **TFLite** | TensorFlow models, Android parity | ~20MB |

*Sizes are approximate and vary by version.

### Choosing a Backend

- **ONNX Runtime** (Recommended): Best compatibility, supports most model formats
- **CoreML**: Best performance on Apple devices, requires CoreML model format
- **TFLite**: Use when you need Android/iOS parity with TensorFlow models

## Supported Platforms

- iOS 15.0+
- macOS 12.0+

## Version History

See [CHANGELOG.md](CHANGELOG.md) for release notes.

## License

MIT License - see [LICENSE](LICENSE) for details.

## Links

- [RunAnywhere SDK Documentation](https://runanywhere.ai/docs)
- [API Reference](https://runanywhere.ai/api)
- [Examples](https://github.com/RunAnywhereAI/runanywhere-examples)
