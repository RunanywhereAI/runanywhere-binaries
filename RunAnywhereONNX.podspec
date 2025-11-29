# =============================================================================
# RunAnywhereONNX.podspec
# On-device ML inference framework with ONNX Runtime backend
# Version: 0.0.1-dev.6af923c
#
# Usage:
#   pod 'RunAnywhereONNX', '~> 0.0.1-dev.6af923c'
#
# Generated automatically - do not edit manually
# =============================================================================

Pod::Spec.new do |s|
  s.name         = 'RunAnywhereONNX'
  s.version      = '0.0.1-dev.6af923c'
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
    :http => 'https://github.com/RunanywhereAI/runanywhere-binaries/releases/download/v0.0.1-dev.6af923c/RunAnywhereONNX.xcframework.zip',
    :sha256 => '41689bd26b462639f57e225b2f55f4ca71885d073345f1ab8e14f708cb258c59'
  }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.vendored_frameworks = 'RunAnywhereONNX.xcframework'
  s.frameworks = 'Foundation', 'CoreML', 'Accelerate'

  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386'
  }
end
