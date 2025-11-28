# =============================================================================
# RunAnywhere.podspec
# CocoaPods specification for RunAnywhere ML framework
# Version: 0.0.1-dev.cacec5c
#
# Usage:
#   pod 'RunAnywhere'           # Default (ONNX) backend
#   pod 'RunAnywhere/ONNX'      # Explicit ONNX backend
#   pod 'RunAnywhere/CoreML'    # CoreML backend
#   pod 'RunAnywhere/TFLite'    # TensorFlow Lite backend
#   pod 'RunAnywhere/All'       # All backends
#
# Generated automatically - do not edit manually
# =============================================================================

Pod::Spec.new do |s|
  s.name         = 'RunAnywhere'
  s.version      = '0.0.1-dev.cacec5c'
  s.summary      = 'On-device ML inference framework with multiple backend support'
  s.description  = <<-DESC
    RunAnywhere provides a unified API for on-device machine learning inference
    across multiple backends including ONNX Runtime, CoreML, and TensorFlow Lite.
    Choose the backend that best fits your use case or use all of them.
  DESC

  s.homepage     = 'https://github.com/RunanywhereAI/runanywhere-binaries'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'RunAnywhere' => 'hello@runanywhere.ai' }
  s.source       = {
    :http => 'https://github.com/RunanywhereAI/runanywhere-binaries/releases/download/v0.0.1-dev.cacec5c/RunAnywhere-0.0.1-dev.cacec5c.zip',
    :sha256 => 'COMBINED_CHECKSUM_PLACEHOLDER'
  }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'
  s.swift_version = '5.9'

  # Default subspec
  s.default_subspecs = 'ONNX'

  # ---------------------------------------------------------------------------
  # ONNX Runtime Backend (Default)
  # ---------------------------------------------------------------------------
  s.subspec 'ONNX' do |onnx|
    onnx.source = {
      :http => 'https://github.com/RunanywhereAI/runanywhere-binaries/releases/download/v0.0.1-dev.cacec5c/RunAnywhereONNX.xcframework.zip',
      :sha256 => '155a1864671a1c119ac3925247b8256727693a4c6a5888d8b2f41b17175267dc'
    }
    onnx.vendored_frameworks = 'RunAnywhereONNX.xcframework'
    onnx.frameworks = 'Foundation', 'CoreML', 'Accelerate'
    onnx.pod_target_xcconfig = {
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386'
    }
  end

end
