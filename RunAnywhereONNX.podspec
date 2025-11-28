# =============================================================================
# RunAnywhereONNX.podspec
# On-device ML inference framework with ONNX Runtime backend
# Version: 0.0.1-dev.e8dd719
#
# Usage:
#   pod 'RunAnywhereONNX', '~> 0.0.1-dev.e8dd719'
#
# Generated automatically - do not edit manually
# =============================================================================

Pod::Spec.new do |s|
  s.name         = 'RunAnywhereONNX'
  s.version      = '0.0.1-dev.e8dd719'
  s.summary      = 'On-device ML inference framework for iOS/macOS'
  s.description  = <<-DESC
    RunAnywhereONNX provides on-device machine learning inference for iOS and macOS.

    Capabilities:
    - Text Generation - Run LLMs locally on device
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
    :http => 'https://github.com/RunanywhereAI/runanywhere-binaries/releases/download/v0.0.1-dev.e8dd719/RunAnywhereONNX.xcframework.zip',
    :sha256 => '3a56138368beae10742b4de1ea840d9dbac504a54c5b388d7dbd5bc3f6fcafd8'
  }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.vendored_frameworks = 'RunAnywhereONNX.xcframework'
  s.frameworks = 'Foundation', 'CoreML', 'Accelerate'

  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386'
  }
end
