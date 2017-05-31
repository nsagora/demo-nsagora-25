//
//  AppDelegate.swift
//  MyAwesomeApp
//
//  Created by Alex Cristea on 31/05/2017.
//  Copyright © 2017 iOS NSAgora. All rights reserved.
//

import UIKit
import UIPresentation

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        setupApplicationWindow()
        return true
    }
    
    private func setupApplicationWindow() {
        let builder = RouterBuilder()
        let router = builder.build()
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = router.viewController
        window?.makeKeyAndVisible()
    }
}

