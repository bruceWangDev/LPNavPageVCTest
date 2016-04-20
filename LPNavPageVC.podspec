Pod::Spec.new do |s|

  s.name         = "LPNavPageVC"
  s.version      = "1.0.0"
  s.summary      = "Do not forget the beginning of the heart, the side always."
  s.homepage     = "https://github.com/EizoiOS/LPNavPageVCTest"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Eizo" => "294537968@qq.com" }
  s.social_media_url   = "http://eizoios.com/"
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/EizoiOS/LPNavPageVCTest.git", :tag => s.version }

 s.source_files  = "LPNavPageVCTest/Sections/*"
 s.requires_arc = true

 end
