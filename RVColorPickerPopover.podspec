Pod::Spec.new do |s|
  s.name             = 'RVColorPickerPopover'
  s.version          = '1.0.5'
  s.summary          = 'The standard MACOS NSColorPanel open as a NSPopover'
  s.description      = <<-DESC
              RVColorPickerPopover is a subclass of NSPopover that includes standard MACOS color picker user interface. This helps to use NSColorPanel as a NSPopover.
                       DESC
  s.homepage         = 'https://github.com/vishalgupta7/RVColorPickerPopover'
  s.screenshots     = 'https://i.imgur.com/RiZqyCa.png', 'https://i.imgur.com/kEu29Ot.png'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.authors           = { 'Vishal Gupta' => 'vishalgupta7@gmail.com' }
  s.source           = { :git => 'https://github.com/vishalgupta7/RVColorPickerPopover.git', :tag => s.version.to_s }
  s.platform = :osx
  s.osx.deployment_target = "10.14"
  s.requires_arc = true
  s.source_files = 'RVColorPickerPopover/Classes/**/*'
  s.swift_version = '5.0'
end
