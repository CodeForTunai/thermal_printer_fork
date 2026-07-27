#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint thermal_printer.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'thermal_printer'
  s.version          = '1.0.0'
  s.summary          = 'A new Flutter plugin project.'
  s.description      = <<-DESC
A new Flutter plugin project.
                       DESC
  s.homepage         = 'http://codingdevs.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Coding Devs' => 'contact@codingdevs.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.static_framework = true
  s.dependency 'Flutter'
  s.platform = :ios, '9.0'

  # GSDK includes a device implementation and a simulator stub. The simulator
  # does not support printer hardware, but its slice keeps Flutter builds
  # linkable on Apple-silicon simulators.
  s.frameworks = ["SystemConfiguration", "CoreTelephony","WebKit"]
  s.vendored_libraries = 'libGSDK.xcframework'

  # Flutter.framework does not contain a i386 slice.
  # s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  # s.swift_version = '5.0'
end
