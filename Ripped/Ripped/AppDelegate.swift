//
//  AppDelegate.swift
//  Ripped
//
//  Created by Bartlomiej Hyzy on 12/28/16.
//  Copyright © 2016 Bartlomiej Hyzy. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let programListVC = ProgramListViewController()
        let navigationVC = UINavigationController(rootViewController: programListVC)
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navigationVC
        window?.makeKeyAndVisible()
        
        return true
    }
}

