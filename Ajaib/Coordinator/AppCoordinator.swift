//
//  AppCoordinator.swift
//  Ajaib
//
//  Created by Kelvin Yusuf on 08/03/21.
//

import UIKit
import Cleanse

class AppCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    var navigationController: BaseNavigationController
    
    private let window: UIWindow
    private let initialStartCoordinator: InitialStartCoordinator
    
    init(_ window: UIWindow, _ navigationController: BaseNavigationController, _ initialStartCoordinator: InitialStartCoordinator) {
        self.window = window
        self.navigationController = navigationController
        self.initialStartCoordinator = initialStartCoordinator
    }
    
    func start() {
        initialStartCoordinator.start()
        window.makeKeyAndVisible()
        window.rootViewController = navigationController
    }
}
