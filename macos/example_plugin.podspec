#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'example_plugin'
  s.version          = '0.0.3'
  s.summary          = 'A crossplatform example of plugins'
  s.description      = <<-DESC
  A crossplatform example of plugins.
                       DESC
  s.homepage         = 'http://flutter.dev'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files     = 'Classes/**/*'
  s.dependency 'FlutterMacOS'
  s.platform = :osx
  s.osx.deployment_target = '10.11'
end

