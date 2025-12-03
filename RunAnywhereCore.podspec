# =============================================================================
# RunAnywhereCore.podspec
# On-device ML inference framework with all backends
# Version: 0.0.1-dev.1a89d8e
#
# Usage:
#   pod 'RunAnywhereCore', '~> 0.0.1-dev.1a89d8e'
#
# Generated automatically - do not edit manually
# =============================================================================

Pod::Spec.new do |s|
  s.name         = 'RunAnywhereCore'
  s.version      = '0.0.1-dev.1a89d8e'
  s.summary      = 'On-device ML inference framework for iOS/macOS'
  s.description  = <<-DESC
    RunAnywhereCore provides on-device machine learning inference for iOS and macOS.
    This unified framework includes all backends in a single package.

    Capabilities:
    - Text Generation - Run LLMs locally on device (ONNX + LlamaCPP)
    - Embeddings - Generate text embeddings for semantic search
    - Speech-to-Text - Batch and real-time streaming transcription
    - Text-to-Speech - Natural voice synthesis
    - Voice Activity Detection - Detect speech in audio
    - Speaker Diarization - Identify different speakers
  DESC

  s.homepage     = 'https://github.com/RunanywhereAI/runanywhere-binaries'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'RunAnywhere' => 'hello@runanywhere.ai' }
  s.source       = {
    :http => 'https://github.com/RunanywhereAI/runanywhere-binaries/releases/download/v0.0.1-dev.1a89d8e/RunAnywhereCore.xcframework.zip',
    :sha256 => '61220a9e1a1b8ec1d26b6654a8921493252f0f2118159e92c25734f78632d79c'
  }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.vendored_frameworks = 'RunAnywhereCore.xcframework'
  s.frameworks = 'Foundation', 'CoreML', 'Accelerate', 'Metal', 'MetalKit'

  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386'
  }
end
