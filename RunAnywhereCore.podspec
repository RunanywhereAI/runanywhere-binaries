# =============================================================================
# RunAnywhereCore.podspec
# On-device ML inference framework with all backends
# Version: 0.0.1-dev.6ab47eb
#
# Usage:
#   pod 'RunAnywhereCore', '~> 0.0.1-dev.6ab47eb'
#
# Generated automatically - do not edit manually
# =============================================================================

Pod::Spec.new do |s|
  s.name         = 'RunAnywhereCore'
  s.version      = '0.0.1-dev.6ab47eb'
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
    :http => 'https://github.com/RunanywhereAI/runanywhere-binaries/releases/download/v0.0.1-dev.6ab47eb/RunAnywhereCore.xcframework.zip',
    :sha256 => 'cd550ec12d88c66f9f16a1ee616dd489c49f04a07c8988c99ef384d19cac27c6'
  }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.vendored_frameworks = 'RunAnywhereCore.xcframework'
  s.frameworks = 'Foundation', 'CoreML', 'Accelerate', 'Metal', 'MetalKit'

  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386'
  }
end
