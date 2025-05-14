Pod::Spec.new do |s|
  s.name             = 'ffmpeg-kit-ios'
  s.version          = '6.0.3'
  s.summary          = 'Mathu FFmpeg Kit for iOS'
  s.description      = 'A Flutter plugin for running FFmpeg and FFprobe commands.',
  s.homepage         = 'https://bitbucket.org/mathu_dev/ffmpeg-kit'
  s.license          = { :type => 'LGPL-3.0' }
  s.author           = { 'Albrecht' => 'albrecht.ohsiek@eps.ch' }

  s.platform         = :ios
  s.ios.deployment_target = '12.1'
  s.requires_arc     = true

  s.source           = { :http => 'https://bitbucket.org/mathu_dev/ffmpeg-kit-binary/raw/7e9a6ddfd4255e46360651a2e012279aaf650820/downloads/mathu-ffmpeg-kit-ios-6.0.3.zip' }

  s.libraries        = [
    'z',
    'bz2',
    'c++',
    'iconv'
  ]

  s.ios.frameworks = [
    'AudioToolbox',
    'AVFoundation',
    'CoreMedia',
    'VideoToolbox'
  ]

  s.ios.vendored_frameworks = [
    'ffmpegkit.xcframework',
    'libavcodec.xcframework',
    'libavdevice.xcframework',
    'libavfilter.xcframework',
    'libavformat.xcframework',
    'libavutil.xcframework',
    'libswresample.xcframework',
    'libswscale.xcframework'
  ]
end