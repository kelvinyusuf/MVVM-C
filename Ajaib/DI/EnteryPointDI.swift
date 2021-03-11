//
//  EnteryPointDI.swift
//  Ajaib
//
//  Created by Kelvin Yusuf on 12/03/21.
//

import Cleanse

struct EntryPointDI {
    struct Module: Cleanse.Module {
        static func configure(binder: Binder<Singleton>) {
            binder.include(module: AppCoordinator.Module.self)
        }
    }
}
