//
//  AppDelegate.swift
//  Ajaib
//
//  Created by Kelvin Yusuf on 05/03/21.
//

import UIKit
import Cleanse

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var appCoordinator: AppCoordinator?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let propertyInjector = try! ComponentFactory.of(AppDelegate.Component.self).build(())
        propertyInjector.injectProperties(into: self)
        
        appCoordinator?.start()
        return true
    }
    
    // MARK: - Start instantiate DI
    struct Component : Cleanse.RootComponent {
        static func configure(binder: Binder<Singleton>) {
            binder.include(module: EntryPointDI.Module.self)
        }
        static func configureRoot(binder bind: ReceiptBinder<PropertyInjector<AppDelegate>>) -> BindingReceipt<PropertyInjector<AppDelegate>> {
            return bind.propertyInjector(configuredWith: { bind in
                bind.to(injector: AppDelegate.injectProperties)
            })
        }
        typealias Root = PropertyInjector<AppDelegate>
        typealias Scope = Singleton
    }
    
    func injectProperties(appCoordinator: AppCoordinator) {
        self.appCoordinator = appCoordinator
    }
    
    // MARK: UISceneSession Lifecycle
    @available(iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    
    @available(iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
}
