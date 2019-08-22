//
//  AppDelegate.swift
//  calculator
//
//  Created by Mac on 14/11/17.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let homeViewController = ViewController()
        window!.rootViewController = homeViewController
        window!.makeKeyAndVisible()
        return true
    }
}

