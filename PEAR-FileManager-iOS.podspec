Pod::Spec.new do |s|
   s.name         = "PEAR-FileManager-iOS"
   s.version      = "1.3.1"
   s.platform     = 'ios','7.0'
   s.homepage     = 'https://github.com/HirokiUmatani'
   s.license      = "MIT"
   s.summary      = 'directory and file manager in iOS'
   s.author       = { "HirokiUmatani" => "info@pear.chat" }
   s.source       =  { :git => 'https://github.com/HirokiUmatani/PEAR-FileManager-iOS.git', :tag => s.version.to_s }
   s.source_files = 'PEAR-FileManager-iOS/*.{h,m}'
end
