
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
  s.source       = { :git => "https://github.com/wangjhstc/SparrowBusiness.git", :commit => "9794151" }
  s.source_files = "SparrowBusiness/Src/BInterface.h","SparrowBusiness/Src/BInterface.m"
  # s.public_header_files = "SparrowBusiness/Src/BInterface.h"
  s.requires_arc = true

  # 商品
   s.subspec 'Interface' do |interface|
      interface.source_files = 'SparrowBusiness/Src/Interface/**/*.{h,m}'
      interface.dependency 'SparrowModel'
  end

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  s.dependency "SparrowModel"
  s.dependency "SparrowData"
end
