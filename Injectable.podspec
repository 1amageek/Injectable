Pod::Spec.new do |s|
  s.name         = "Injectable"
  s.version      = "1.0"
  s.summary      = "Swift Inject & Dependency"
  s.description  = <<-DESC
  Swift Inject & Dependency
                   DESC

  s.homepage     = "https://github.com/1amageek/Injectable"
  s.license      = { :type => "MIT", :file => "./LICENSE" }
  s.author             = { "1amageek" => "tmy0x3@icloud.com" }
  s.social_media_url   = "http://twitter.com/1amageek"
  s.platform     = :ios
  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.10"
  s.watchos.deployment_target = "3.0"
  s.tvos.deployment_target = "9.0"
  s.source       = { :git => "https://github.com/1amageek/Injectable.git", :tag => "#{s.version}" }
  s.source_files  = "Injectable/**/*.swift"

end
