#
# Be sure to run `pod lib lint PreciselyAPIsIOSSDK.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = "PreciselyAPIsIOSSDK"
    s.version          = "11.0.1"

    s.summary          = "Precisely APIs"
    s.description      = <<-DESC
                         Enhance & enrich your data, applications, business processes, and workflows with rich location, information, and identify APIs.
                         DESC

    s.platform     = :ios, '7.0'
    s.requires_arc = true

    s.framework    = 'SystemConfiguration'

    s.homepage     = "https://github.com/swagger-api/swagger-codegen"
    s.license      = "Apache License, Version 2.0"
    s.source       = { :git => "https://github.com/swagger-api/swagger-codegen.git", :tag => "#{s.version}" }
    s.author       = { "Precisely" => "" }

    s.source_files = 'PreciselyAPIsIOSSDK/**/*.{m,h}'
    s.public_header_files = 'PreciselyAPIsIOSSDK/**/*.h'


    s.dependency 'AFNetworking', '~> 3'
    s.dependency 'JSONModel', '~> 1.2'
    s.dependency 'ISO8601', '~> 0.5'
end

