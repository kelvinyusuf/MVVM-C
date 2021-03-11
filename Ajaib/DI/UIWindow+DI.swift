//
//  UIWindow+DI.swift
//  Ajaib
//
//  Created by Kelvin Yusuf on 08/03/21.
//

import Cleanse

extension UIWindow {
    struct Module: Cleanse.Module {
        static func configure(binder: Binder<Singleton>) {
            binder.bind(UIWindow.self)
                .sharedInScope()
                .to(factory: UIWindow.init)
        }
    }
}
