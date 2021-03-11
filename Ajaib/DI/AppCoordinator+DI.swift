//
//  AppCoordinator+DI.swift
//  Ajaib
//
//  Created by Kelvin Yusuf on 12/03/21.
//

import Cleanse

extension AppCoordinator {
    struct Module : Cleanse.Module {
        static func configure(binder: Binder<Singleton>) {
            binder.include(module: UIWindow.Module.self)
            binder.include(module: BaseNavigationController.Module.self)
            binder.include(module: InitialStartCoordinator.Module.self)
            binder.bind(AppCoordinator.self)
                .sharedInScope()
                .to(factory: AppCoordinator.init)
        }
    }
}
