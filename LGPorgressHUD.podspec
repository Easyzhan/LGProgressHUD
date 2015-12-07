Pod::Spec.new do |s|

  s.name         = "LGPorgressHUD"
  s.version      = "0.0.1"
  s.summary      = "LGPorgressHUD is a progress hud for IOS app."

  s.description  = <<-DESC
                   DESC

  s.homepage     = "https://github.com/jamy0801/LGPorgressHUD"

  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }

  s.author             = { "jamy0801" => "gg.jamy@163.com" }
  s.social_media_url   = "https://github.com/jamy0801"

  s.platform     = :ios
  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/jamy0801/LGPorgressHUD/LGPorgressHUD.git", :tag => "0.0.1" }

  s.source_files  = 'LGProgressHUD/LGProgressHUD/*.swift'

end
