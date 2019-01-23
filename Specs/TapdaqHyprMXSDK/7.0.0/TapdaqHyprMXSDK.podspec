Pod::Spec.new do |s|

  s.name         = "TapdaqHyprMXSDK"
  s.version      = "7.0.0"
  s.summary      = "HyprMX SDK"
  s.description  = <<-DESC
  HyprMX SDK for use with Tapdaq SDK.
                   DESC
                   s.license      = {
    :type => "Commercial",
    :text => "https://tapdaq.com/terms-and-conditions"
  }
  s.author             = { "Tapdaq" => "support@tapdaq.com" }

  s.homepage     = "https://tapdaq.com"
  s.platform     = :ios, "9.0"
  s.source       = { :http => "https://s3.eu-west-2.amazonaws.com/tapdaq-ios-sdk/#{s.version}/networks/HyprMX/HyprMX_#{s.version}.zip" }

  s.default_subspec = "SDK"

  s.subspec "SDK" do |sdk|
    sdk.frameworks = "AdSupport", "AVFoundation", "CoreGraphics", "CoreTelephony",
                 "Foundation", "MessageUI", "MobileCoreServices", "QuartzCore",
                 "SystemConfiguration", "EventKit", "EventKitUI"
    sdk.weak_frameworks = "WebKit", "SafariServices", "StoreKit"
    sdk.library   = "xml2"
    sdk.vendored_frameworks = 'HyprMXAdapter/HyprMX.framework'
    sdk.xcconfig = { "OTHERLD_FLAGS" => "-ObjC" }
    sdk.requires_arc = true
  end
end
