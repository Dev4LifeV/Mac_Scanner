import UIKit
import Foundation
import Flutter

let channelMain = "com.proppe.macscanner.mac_scanner";
let channelHttp = "\(channelMain)/http";

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    let httpMethod: MethodChannel = MethodChannel()
    
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      
      let controller = window?.rootViewController as! FlutterViewController
      
      httpMethod.channel = FlutterMethodChannel(name: channelHttp, binaryMessenger: controller.binaryMessenger)
      httpMethod.callMethod {call, result in
          
          print("CALLED METHOD")
          
          let parameters = call.arguments as? [String]
          
          print(parameters)
          
          guard let url = parameters?[0] else {
              print("NO URL PASSED")
              return
          }
          
          guard let token = parameters?[1] else {
              print("NO TOKEN PASSED")
              return
          }
          
          var request = URLRequest(url: URL(string: url)!)
          request.setValue(token, forHTTPHeaderField: "X-Authentication-Token")
          
          var methodResult: [String: Any] = [:]
          
          URLSession.shared.dataTask(with: request) { data, response, error in
              guard error == nil else {
                  methodResult["error"] = error?.localizedDescription
                  result(methodResult)
                  return
              }
              
              guard let value = data else {
                  methodResult["error"] = "Data received is null"
                  result(methodResult)
                  return
              }
              
              do {
                  guard let decodedValue = try JSONSerialization.jsonObject(with: value, options: .allowFragments) as? [String:Any] else {
                      methodResult["error"] = "Couldn't decode data"
                      result(methodResult)
                      return
                  }
                  methodResult["value"] = decodedValue
                  result(methodResult)
              } catch {
                  methodResult["error"] = error.localizedDescription
                  result(methodResult)
              }
          }.resume()
      }
      
    GeneratedPluginRegistrant.register(with: self)
      
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}


