Pod::Spec.new do |s|
  s.name         = "PEARFileManager"
  s.version      = "0.0.1"
  s.platform     = 'ios','7.0'
  s.homepage     = 'https://github.com/HirokiUmatani'
  s.license      = "MIT"
  s.summary      = 'ios app directory file manager'
  s.author       = { "HirokiUmatani" => "o9093009555@gmail.com" }
  s.source       =  { :git => 'https://github.com/HirokiUmatani/PEARFileManager.git', :tag => s.version.to_s }
  s.source_files  = 'PEARFileManager/*.{h,m}'
end
