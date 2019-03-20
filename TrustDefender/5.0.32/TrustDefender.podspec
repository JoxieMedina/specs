#
#  Be sure to run `pod spec lint VisaNetSDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|  
  s.name              = 'TrustDefender'
  s.version           = '5.0.32'
  s.summary           = 'TrustDefender private repo'
  s.homepage          = 'https://www.threatmetrix.com/support/trustdefender/'

  s.author            = { 'Darwin' => 'josuelp17@gmail.com' }
  s.license           = { :type => 'MIT', :file => 'LICENSE' }
  
  s.source            = { :http => 'https://dl.dropboxusercontent.com/s/r1q77m3hc38dvpj/TrustDefender5032.zip'}

  s.platform          = :ios
  s.public_header_files = 'TrustDefender.framework/**/*.h'
  s.source_files = 'TrustDefender.framework/{*.h,*.m,**/*.h,**/*.m}'
  s.libraries = 'xml2', 'z', 'sqlite3.0'
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }
  s.vendored_frameworks = 'TrustDefender.framework'
  s.ios.deployment_target = '9.0'
  s.ios.vendored_frameworks = 'TrustDefender.framework'

end
