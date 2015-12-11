//
//  AppDelegate.swift
//  Food Tracker
//
//  Created by Ashley Jelks on 12/4/15.
//  Copyright © 2015 Ashley Jelks. All rights reserved.
//

//Main functions of the AppDelegate.swift file...1) creates entry point for the app to begin and a run loop to deliver input events to the app. 

//All this work is done by the @UIApplicationMain attribute which creates an application object (An object in your app that’s responsible for managing the life cycle of the app, communicating with its delegate, the app delegate, during state transitions within the app.)

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    //The app delegate uses the window property ^^ to keep track of the window where the all the app content is drawn from. It is an optional property.


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.

    }
    
/*
    //Hide the keyboard
    textField.resignFirstResponder() {
    
    return true
    }
    
    func textFieldShouldReturn(textField:UITextField Bool {}
    
*/
    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground.
    }


}




































