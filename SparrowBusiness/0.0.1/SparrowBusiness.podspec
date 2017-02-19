
Pod::Spec.new do |s|
  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.name         = "SparrowBusiness"
  s.version      = "0.0.1"
  s.summary      = "Test Model"
  s.description  = <<-DESC
                  Just Test Model
                   DESC
  s.homepage     = "https://github.com/wangjhstc/SparrowBusiness"
  s.license      = "MIT"
  s.author             = { "wangjhstc" => "wangjhstc@126com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/wangjhstc/SparrowBusiness.git", :commit => "d67a945" }
  s.source_files = "SparrowBusiness/Src/BInterface.h","SparrowBusiness/Src/BInterface.m"
  # s.public_header_files = "SparrowBusiness/Src/BInterface.h"
  s.requires_arc = true

  # 商品
   s.subspec 'Interface' do |interface|
      interface.source_files = 'SparrowBusiness/Src/Interface/**/*.{h,m}'
      interface.dependency 'SparrowModel'
      interface.dependency "SparrowData"
      interface.dependency "AFNetworking", "~> 3.0"
  end

  s.subspec 'Document' do |document|
    document.source_files = 'SparrowBusiness/Src/Document/**/*.*'
    document.user_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS=0' }
      # s.user_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS=1' }
  end

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "SparrowModel"
  # s.dependency "SparrowData"
  # s.dependency "AFNetworking", "~> 3.0"
end
