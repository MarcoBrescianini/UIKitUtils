Pod::Spec.new do |s|
  s.name             = "UIKitUtils"
  s.version          = "1.0"
  s.summary          = "UIKit utils"
  s.homepage         = "https://github.com/MarcoBrescianini/UIKitUtils"
  s.license          = 'MIT'
  s.author           = { "Marco Brescianini" => "m.brescianini85@gmail.com" }
  s.source           = { :git => "https://github.com/MarcoBrescianini/UIKitUtils.git", :tag => s.version }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'UIKitUtils/*.{h,m}'

  s.frameworks = 'UIKit'
  s.module_name = 'UIKitUtils'
end
