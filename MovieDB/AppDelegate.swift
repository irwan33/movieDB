//
//  AppDelegate.swift
//  MovieDB
//
//  Created by Muhammad Alfiansyah Nur Cahya Putra on 13/02/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow()
        window?.backgroundColor = UIColor.white
        window?.rootViewController = UINavigationController(rootViewController: MovieListRouter.createModule())
        window?.makeKeyAndVisible()
        return true
    }
}
