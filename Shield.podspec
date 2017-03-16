#
# Be sure to run `pod lib lint ${POD_NAME}.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Shield'
  s.version          = '0.1.0'
  s.summary          = 'Shield is an iOS/macOS/tvOS framework that wraps various authorization APIs (e.g. camera, photo, location).'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Shield is an iOS/macOS/tvOS framework that wraps various authorization APIs (e.g. camera, photo, location). The majority of the wrapped APIs are for iOS, with a few cross platform available on macOS as well. Only the methods for location and photo library are available on tvOS.
                       DESC

  s.homepage         = 'https://github.com/Kosoku/Shield'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'BSD', :file => 'license.txt' }
  s.author           = { 'William Towe' => 'willbur1984@gmail.com' }
  s.source           = { :git => 'https://github.com/Kosoku/Shield.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'
  s.osx.deployment_target = '10.12'
  s.watchos.deployment_target = '3.0'

  s.source_files = 'Shield/**/*.{h,m}'
  s.exclude_files = 'Shield/Shield-Info.h'
  
  # s.resource_bundles = {
  #   '${POD_NAME}' => ['${POD_NAME}/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.ios.frameworks = 'HealthKit', 'Intents', 'Speech', 'AVFoundation', 'Photos', 'CoreBluetooth', 'CoreLocation', 'EventKit', 'Contacts'
  s.osx.frameworks = 'AppKit', 'ApplicationServices', 'CoreLocation', 'EventKit', 'Contacts'
  s.tvos.frameworks = 'CoreLocation', 'Photos'
  
  s.dependency 'Stanley'
end