#
# Be sure to run `pod lib lint ZXNavigationBarKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZXNavigationBarKit'
  s.version          = '0.1.0'
  s.summary          = '自定义导航条，隐藏系统导航条，使用不会受系统侧滑动画影响'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/zj1208/ZXNavigationBarKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '海参' => '879654715@qq.com' }
  s.source           = { :git => 'https://github.com/zj1208/ZXNavigationBarKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'ZXNavigationBarKit/Classes/**/*'
  
  s.resource_bundles = {
     'ZXNavigationBarKit' => ['ZXNavigationBarKit/Classes/**/*.{storyboard,xib}']
  }
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
