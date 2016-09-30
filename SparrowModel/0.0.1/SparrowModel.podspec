
Pod::Spec.new do |s|
  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.name         = "SparrowModel"
  s.version      = "0.0.1"
  s.summary      = "Test Model"
  s.description  = <<-DESC
                  Just Test Model
                   DESC
  s.homepage     = "https://github.com/wangjhstc/SparrowModel"
  s.license      = "MIT"
  s.author             = { "wangjhstc" => "wangjhstc@126com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/wangjhstc/SparrowModel.git", :commit => "90e567d" }
  s.source_files = "SparrowModel/Src/MInterface.h"
  s.public_header_files = "SparrowModel/Src/MInterface.h"
  s.requires_arc = true

  # 商品
   s.subspec 'Commodity' do |commodity|
      commodity.source_files = 'SparrowModel/Src/Commodity/**/*.{h,m}'
      # commodity.public_header_files = 'SparrowModel/Src/Module/**/*.h'
      # commodity.dependency 'SparrowModel/Sparrow'
  end

  # 订单
  s.subspec 'Order' do |order|
    order.source_files = 'SparrowModel/Src/Order/**/*.{h,m}'
  end

  # 登录
  s.subspec 'Login' do |login|
    login.source_files = 'SparrowModel/Src/Login/**/*.{h,m}'
  end


  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"
end
