//
//  InitialStartVM.swift
//  Ajaib
//
//  Created by Kelvin Yusuf on 08/03/21.
//

import Cleanse

protocol InitialStartVMProtocol {
    func navigateTest()
}

class InitialStartVM: BaseViewModel, InitialStartVMProtocol {
    weak var coordinator: InitialStartCoordinator?
    
    func navigateTest() {
        coordinator?.nextScreen()
    }
}

