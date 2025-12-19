# =============================================================================
# RunAnywhereCore.podspec
# On-device ML inference framework with all backends
# Version: 0.0.1-dev.5cf5e71
#
# Usage:
#   pod 'RunAnywhereCore', '~> 0.0.1-dev.5cf5e71'
#
# Generated automatically - do not edit manually
# =============================================================================

Pod::Spec.new do |s|
  s.name         = 'RunAnywhereCore'
  s.version      = '0.0.1-dev.5cf5e71'
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
    :http => 'https://github.com/RunanywhereAI/runanywhere-binaries/releases/download/v0.0.1-dev.5cf5e71/RunAnywhereCore.xcframework.zip',
    :sha256 => '5a5e0b86c18838b66bc3cd49e89b022a7516c62581a398e573714ddcefc5f53f'
  }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.vendored_frameworks = 'RunAnywhereCore.xcframework'
  s.frameworks = 'Foundation', 'CoreML', 'Accelerate', 'Metal', 'MetalKit'

  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386'
  }
end
