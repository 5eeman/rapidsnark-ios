#
# Be sure to run `pod lib lint rapidsnark.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'rapidsnark'
  s.version          = '0.1.0'
  s.summary          = 'iOS implementation of bridge for rapidsnark library.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'iOS implementation of bridge for rapidsnark library. Used for zk proof generation.'

  s.homepage         = 'https://github.com/iden3/rapidsnark'
#   TODO Uncomment this
#   s.homepage         = 'https://github.com/iden3/rapidsnark-ios'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Yaroslav Moria' => 'morya.yaroslav@gmail.com' }
  s.source           = { :git => 'https://github.com/iden3/rapidsnark.git', :tag => s.version.to_s }
#   TODO Uncomment this
#   s.source           = { :git => 'https://github.com/iden3/rapidsnark-ios.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'rapidsnark/Classes/**/*'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'

  s.preserve_paths = 'rapidsnark/Frameworks/*'
  vendored_frameworks = 'rapidsnark/Frameworks/Rapidsnark.xcframework'
  s.vendored_frameworks = 'rapidsnark/Frameworks/Rapidsnark.xcframework'
  s.ios.vendored_frameworks = "rapidsnark/Frameworks/Rapidsnark.xcframework"
  s.xcconfig = {
    'OTHER_LDFLAGS' => '-ObjC',
    'HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/rapidsnark/Headers"'
  }
end
