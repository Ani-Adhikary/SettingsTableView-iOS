//
//  AppDelegate.swift
//  StarterAppUsingXIB
//
//  Created by Ani Adhikary on 09/02/19.
//  Copyright © 2019 TheTechStory. All rights reserved.
//

//General
//=====
//
//Deployment Info
//——
//
//Deployment Target
//Set Deployment Target to iOS Version from which you want to support the app like 9.0
//
//Main Interface
//Remove Main.storyboard if you are not using that.
//
//Coding
//======
//
//Create UIViewControllers with XIBs
//Delete Main.storyboard and View Controller

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    //1
    //Declare Nav Controller
    let navigationController = UINavigationController()
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        //2
        //set up window
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        //window?.frame = UIScreen.main.bounds
        setupNavigationController()
        setupUserInterface()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    //3
    func setupNavigationController() {
        window?.rootViewController = navigationController
        let navBarAppearance = UINavigationBar.appearance()
        navBarAppearance.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        navBarAppearance.barTintColor = UIColor.royalBlue
    }
    
    //4
    func setupUserInterface() {
//        let loginVC = LoginViewController(nibName: "LoginViewController", bundle: nil)
//        navigationController.pushViewController(loginVC, animated: false)
        //or
        navigationController.pushViewController(LoginViewController(), animated: false)
        
        //5 other way
        //set the Login VC as root
       // window?.rootViewController = LoginViewController()
    }
    
}
