//
//  AppDelegate.swift
//  Telegramme
//
//  Created by MAD2_P03 on 5/11/19.
//  Copyright © 2019 Dave Huan. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var contactList:[Contact] = []
    
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        contactList = [
            Contact(firstname: "Ryan", lastname: "Bok Choy", mobileno: "99889988"),
            Contact(firstname: "Nyth", lastname: "Bok Choy", mobileno: "99889988"),
            Contact(firstname: "Uwu", lastname: "Bok Choy", mobileno: "99878988")
            ]
        
        return true
    }

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

