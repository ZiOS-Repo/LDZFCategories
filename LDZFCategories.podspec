#
# Be sure to run `pod lib lint LDZFCategories.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LDZFCategories'
  s.version          = '0.1.15'
  s.summary          = 'A short description of LDZFCategories.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/ZiOS-Repo/LDZFCategories'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zhuyuhui434@gmail.com' => 'zhuyuhui434@gmail.com' }
  s.source           = { :git => 'https://github.com/ZiOS-Repo/LDZFCategories.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  # s.source_files = 'LDZFCategories/Classes/**/*'
  
  # s.resource_bundles = {
  #   'LDZFCategories' => ['LDZFCategories/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.public_header_files = 'LDZFCategories/**/LDZFCategories.h'
  s.source_files = 'LDZFCategories/**/LDZFCategories.h'
#  s.dependency 'JXCategoryKit'
  
  s.subspec 'Foundation' do |ss|
    ss.source_files = 'LDZFCategories/**/Foundation/**/*.{h,m}'
  end

  s.subspec 'QuartzCore' do |ss|
    ss.source_files = 'LDZFCategories/**/QuartzCore/**/*.{h,m}'
  end

  s.subspec 'UIKit' do |ss|
    ss.source_files = 'LDZFCategories/**/UIKit/**/*.{h,m}'
  end
  
  s.subspec 'UnSure' do |ss|
    ss.source_files = 'LDZFCategories/**/UnSure/**/*.{h,m}'
  end

end
