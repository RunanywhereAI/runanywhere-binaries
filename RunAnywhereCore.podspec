# =============================================================================
# RunAnywhereCore.podspec
# On-device ML inference framework with all backends
# Version: 0.0.1-dev.03608a7
#
# Usage:
#   pod 'RunAnywhereCore', '~> 0.0.1-dev.03608a7'
#
# Generated automatically - do not edit manually
# =============================================================================

Pod::Spec.new do |s|
  s.name         = 'RunAnywhereCore'
  s.version      = '0.0.1-dev.03608a7'
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
    :http => 'https://github.com/RunanywhereAI/runanywhere-binaries/releases/download/v0.0.1-dev.03608a7/RunAnywhereCore.xcframework.zip',
    :sha256 => '4f87d53d4afb02452a518090599e7653e9979c9e3b4ce5723383474c431e7bfa'
  }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.vendored_frameworks = 'RunAnywhereCore.xcframework'
  s.frameworks = 'Foundation', 'CoreML', 'Accelerate', 'Metal', 'MetalKit'

  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386'
  }
end
