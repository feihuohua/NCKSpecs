#
# Be sure to run `pod lib lint NCKFoundation.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'NCKFoundation'
  s.version          = '0.5.0'
  s.summary          = 'NCKFoundation.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/feihuohua/NCKFoundation'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'feihuohua' => 'feihuohua@163.com' }
  s.source           = { :git => 'https://github.com/feihuohua/NCKFoundation.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'NCKFoundation/Classes/*.{h,m}', 'NCKFoundation/Classes/WHObject/*.{h,m}', 'NCKFoundation/Classes/ThirdParty/WeChatSDK1.8.3/*.{h}'
  s.vendored_libraries  = 'NCKFoundation/Classes/ThirdParty/WeChatSDK1.8.3/libWeChatSDK.a'
  s.frameworks = 'SystemConfiguration','CoreGraphics','CoreTelephony','Security','CoreLocation','JavaScriptCore'
  s.libraries  = 'iconv','sqlite3','stdc++','z'
  
  # s.resource_bundles = {
  #   'NCKFoundation' => ['NCKFoundation/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.dependency   'AFNetworking', '~> 3.1.0'
  
  s.subspec 'WHObject' do |cs|
      cs.source_files = 'NCKFoundation/Classes/WHObject/*.{h,m}'
  end
end
