//
//  InitialStartCoordinatorDI.swift
//  Ajaib
//
//  Created by Kelvin Yusuf on 12/03/21.
//

import Cleanse

extension InitialStartCoordinator {
    struct Module : Cleanse.Module {
        static func configure(binder: Binder<Singleton>) {
            binder.include(module: BaseNavigationController.Module.self)
            binder.include(module: InitialStartVM.Module.self)
            binder.include(module: InitialStartVC.Module.self)
            binder.include(module: TestScreenCoordinator.Module.self)
            binder.bind(InitialStartCoordinator.self).to(factory: InitialStartCoordinator.init)
        }
    }
}

extension InitialStartVM {
    struct Module : Cleanse.Module {
        static func configure(binder: Binder<Singleton>) {
            binder.bind(InitialStartVM.self).to(factory: InitialStartVM.init)
        }
    }
}

extension InitialStartVC {
    struct Module : Cleanse.Module {
        static func configure(binder: Binder<Singleton>) {
            binder.bind(InitialStartVC.self).to(factory: InitialStartVC.init)
        }
    }
}
