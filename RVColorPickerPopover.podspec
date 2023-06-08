#
# Be sure to run `pod lib lint RVColorPickerPopover.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RVColorPickerPopover'
  s.version          = '1.0.3'
  s.summary          = 'The standard MACOS NSColorPanel open as a NSPopover'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
              RVColorPickerPopover is a subclass of NSPopover that includes standard MACOS color picker user interface. This helps to use NSColorPanel as a NSPopover.
                       DESC

  s.homepage         = 'https://github.com/vishalgupta7/RVColorPickerPopover'
  s.screenshots     = 'https://i.imgur.com/RiZqyCa.png', 'https://i.imgur.com/kEu29Ot.png'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.authors           = { 'Vishal Gupta' => 'vishalgupta7@gmail.com' }
  s.source           = { :git => 'https://github.com/vishalgupta7/RVColorPickerPopover.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform = :osx
  s.osx.deployment_target = "10.14"

  s.source_files = 'RVColorPickerPopover/Classes/**/*'
  
  # s.resource_bundles = {
  #   'RVColorPickerPopover' => ['RVColorPickerPopover/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'Cocoa'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.swift_version = '5.0'
end
