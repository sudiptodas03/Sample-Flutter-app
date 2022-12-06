import UIKit
import Flutter
import singular_flutter_sdk

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    if let singularAppDelegate = SingularAppDelegate.shared() {
    singularAppDelegate.launchOptions = launchOptions
  }
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

override func application(_ application: UIApplication, continue userActivity:
NSUserActivity, restorationHandler: @escaping ([UIUserActivityRestoring]?)
-> Void) -> Bool {
  if let singularAppDelegate = SingularAppDelegate.shared() {
    singularAppDelegate.continueUserActivity(userActivity, restorationHandler:nil)
  }
  return true
}

override func application(_ app: UIApplication, open url: URL, options:
[UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
  if let singularAppDelegate = SingularAppDelegate.shared() {
    singularAppDelegate.handleOpen(url, options: options)
  }
  return true
}
}
