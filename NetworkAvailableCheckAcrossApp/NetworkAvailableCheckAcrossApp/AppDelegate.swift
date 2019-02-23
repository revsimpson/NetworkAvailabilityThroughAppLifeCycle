//
//  AppDelegate.swift
//  NetworkAvailableCheckAcrossApp
//
//  Created by Richard Simpson on 22/02/2019.
//  Copyright © 2019 Richard Simpson. All rights reserved.
//

import UIKit
import Network

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    // If you have more ApplicationServices add them to the array that takes ApplicationService protocol instances and their start() function will all be called.
    let services : [ApplicationService] = [NetWorkAvailableService()]
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        services.forEach{ $0.start() }
        
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
 
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
 
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
 
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
 
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        
    }
    
    
}

