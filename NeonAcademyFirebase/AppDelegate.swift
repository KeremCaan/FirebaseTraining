//
//  AppDelegate.swift
//  NeonAcademyFirebase
//
//  Created by Kerem Caan on 9.08.2023.
//

import UIKit
import FirebaseCore
import FirebaseDynamicLinks

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()
        return true
    }
    
//    func handleIncomingDynamicLink(dynamicLink: DynamicLink) {
//        guard let dynamicLink.url else {
//            print("no url")
//            return
//        }
//        
//    }
//    
//    func application(_ application: UIApplication, continue userActivity: NSUserActivity, restorationHandler: @escaping ([UIUserActivityRestoring]?) -> Void) -> Bool {
//        if let incomingURL = userActivity.webpageURL {
//            print("incoming url is \(incomingURL)")
//            let linkHandled = DynamicLinks.dynamicLinks().handleUniversalLink(incomingURL) { (dynamicLink, error) in
//                guard error == nil else {
//                    print(error?.localizedDescription)
//                    return
//                }
//                if let dynamicLink = dynamicLink {
//                    self.handleIncomingDynamicLink(dynamicLink)
//                }
//            }
//            if linkHandled {
//                return true
//            }else {
//                return false
//            }
//        }
//        return false
//    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

