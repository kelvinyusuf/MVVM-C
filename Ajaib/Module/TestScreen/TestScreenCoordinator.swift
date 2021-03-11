//
//  TestScreenCoordinator.swift
//  Ajaib
//
//  Created by Kelvin Yusuf on 12/03/21.
//

import Cleanse
import UIKit


class TestScreenCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    var navigationController: BaseNavigationController
    
    var parentCoordinator: InitialStartCoordinator?
    
    private let viewController: TestScreenVC
    private let viewModel: TestScreenVM
    
    init(_ navigationController: BaseNavigationController, viewController: TestScreenVC, viewModel: TestScreenVM) {
        self.navigationController = navigationController
        self.viewController = viewController
        self.viewModel = viewModel
    }
    
    func start() {
        viewController.viewModel = viewModel
        viewModel.coordinator = self
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func doDeinit() {
        print("==> PARENT COORDINATOR \(parentCoordinator)")
        parentCoordinator?.childDidFinish(coordinator: self)
    }
    
    deinit {
        print("REVOKE TEST SCREEN COORDINATOR")
    }
}


class Abc: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
    }
    deinit {
        print("DEINIT")
    }
}
