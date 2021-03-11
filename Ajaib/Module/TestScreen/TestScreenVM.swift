//
//  TestScreenVM.swift
//  Ajaib
//
//  Created by Kelvin Yusuf on 12/03/21.
//

import Cleanse
protocol TestScreenVMProtocol {
    func testDeinit()
}

class TestScreenVM: BaseViewModel, TestScreenVMProtocol {
    weak var coordinator: TestScreenCoordinator?
    deinit {
        print("Revoke TEST VM")
    }
    
    func testDeinit() {
        print("==> COORDINATOR \(coordinator)")
        coordinator?.doDeinit()
    }
}
