# =============================================================================
# RunAnywhereONNX.podspec
# On-device ML inference framework with ONNX Runtime backend
# Version: 0.0.1-dev.e2ac4eb
#
# Usage:
#   pod 'RunAnywhereONNX', '~> 0.0.1-dev.e2ac4eb'
#
# Generated automatically - do not edit manually
# =============================================================================

Pod::Spec.new do |s|
  s.name         = 'RunAnywhereONNX'
  s.version      = '0.0.1-dev.e2ac4eb'
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
    :http => 'https://github.com/RunanywhereAI/runanywhere-binaries/releases/download/v0.0.1-dev.e2ac4eb/RunAnywhereONNX.xcframework.zip',
    :sha256 => '8f6d70707da24ae8a29722d190735e6f3b06b91b438989541761911295de3973'
  }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.vendored_frameworks = 'RunAnywhereONNX.xcframework'
  s.frameworks = 'Foundation', 'CoreML', 'Accelerate'

  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386'
  }
end
