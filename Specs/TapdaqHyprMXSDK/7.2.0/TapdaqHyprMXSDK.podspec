Pod::Spec.new do |s|

  s.name         = "TapdaqHyprMXSDK"
  s.version      = "7.2.0"
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
  s.source       = { :http => "http://ios-sdk.tapdaq.com/#{s.version}/adapters/HyprMXAdapter/HyprMXAdapter.zip" }

  s.default_subspec = "SDK"

  s.subspec "SDK" do |sdk|
    sdk.frameworks = "AdSupport", "AVFoundation", "CoreGraphics", "CoreTelephony",
                 "Foundation", "MessageUI", "MobileCoreServices", "QuartzCore",
                 "SystemConfiguration", "EventKit", "EventKitUI"
    sdk.weak_frameworks = "WebKit", "SafariServices", "StoreKit"
    sdk.library   = "xml2"
    sdk.vendored_frameworks = 'network/HyprMX.framework'
    sdk.xcconfig = { "OTHERLD_FLAGS" => "-ObjC" }
    sdk.requires_arc = true
  end
end
