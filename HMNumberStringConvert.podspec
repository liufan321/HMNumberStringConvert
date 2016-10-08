Pod::Spec.new do |s|
  s.name         = "HMNumberStringConvert"
  s.version      = "0.0.2"
  s.summary      = "OC的数字转字符串分类方法"
  s.homepage     = "https://github.com/liufan321/HMNumberStringConvert"
  s.license      = "MIT"
  s.author       = { "刘凡" => "liufan321@gmail.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/liufan321/HMNumberStringConvert.git", :tag => "#{s.version}" }
  s.source_files  = "HMNumberStringConvert", "HMNumberStringConvert/HMNumberStringConvert/NumberStringConvert/*.{h,m}"
  s.requires_arc = true
end
