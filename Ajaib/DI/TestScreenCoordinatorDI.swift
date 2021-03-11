//
//  TestScreenCoordinatorDI.swift
//  Ajaib
//
//  Created by Kelvin Yusuf on 12/03/21.
//

import Cleanse

extension TestScreenCoordinator {
    struct Module : Cleanse.Module {
        static func configure(binder: Binder<Singleton>) {
            binder.include(module: BaseNavigationController.Module.self)
            binder.include(module: TestScreenVM.Module.self)
            binder.include(module: TestScreenVC.Module.self)
            binder.bind(TestScreenCoordinator.self).to(factory: TestScreenCoordinator.init)
        }
    }
}

extension TestScreenVM {
    struct Module : Cleanse.Module {
        static func configure(binder: Binder<Singleton>) {
            binder.bind(TestScreenVM.self).to(factory: TestScreenVM.init)
        }
    }
}

extension TestScreenVC {
    struct Module : Cleanse.Module {
        static func configure(binder: Binder<Singleton>) {
            binder.bind(TestScreenVC.self).to(factory: TestScreenVC.init)
        }
    }
}
