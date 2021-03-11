//
//  BaseNavigationController+DI.swift
//  Ajaib
//
//  Created by Kelvin Yusuf on 12/03/21.
//

import Cleanse

extension BaseNavigationController {
    struct Module: Cleanse.Module {
        static func configure(binder: Binder<Singleton>) {
            binder.bind(BaseNavigationController.self)
                .sharedInScope()
                .to(factory: BaseNavigationController.init)
        }
    }
}
