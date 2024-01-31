//
//  HomeScreenQuickActionApp.swift
//  HomeScreenQuickAction
//
//  Created by Appnap WS05 on 1/31/24.
//

import SwiftUI

@main
struct HomeScreenQuickActionApp: App {
    @UIApplicationDelegateAdaptor(AppLifeCycle.self) var appDelegate
    @StateObject var quickActionHandler = QuickActionHandler.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(quickActionHandler)
        }
    }
}



class AppLifeCycle: NSObject, UIApplicationDelegate, UIWindowSceneDelegate {
    
    //this function triggers when app is being launched
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        if let shortcutItem = connectionOptions.shortcutItem {
            QuickActionHandler.shared.selectedOption = Actions(rawValue: shortcutItem.type)
        }
    }
    
    //This function triggers when app is already running
    func windowScene(_ windowScene: UIWindowScene, performActionFor shortcutItem: UIApplicationShortcutItem, completionHandler: @escaping (Bool) -> Void) {
        QuickActionHandler.shared.selectedOption = Actions(rawValue: shortcutItem.type)
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        return true
    }
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        let sceneConfig: UISceneConfiguration = UISceneConfiguration(name: nil, sessionRole: connectingSceneSession.role)
        sceneConfig.delegateClass = Self.self
        return sceneConfig
    }
}
