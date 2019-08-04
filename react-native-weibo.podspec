require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = package['name']
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = package['homepage']
  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/folowing/react-native-weibo", :tag => "master" }
  s.source_files  = "ios/**/*.{h,m}"

  s.dependency 'React'

  s.frameworks = 'SystemConfiguration', 'CoreTelephony'
  s.library = 'sqlite3', 'c++', 'z'

  s.resource  = 'ios/libWeiboSDK/WeiboSDK.bundle'
  s.vendored_libraries = 'ios/libWeiboSDK/libWeiboSDK.a'

end
