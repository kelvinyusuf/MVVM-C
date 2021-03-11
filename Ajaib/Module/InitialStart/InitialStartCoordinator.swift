//
//  InitialStartCoordinator.swift
//  Ajaib
//
//  Created by Kelvin Yusuf on 08/03/21.
//

import Cleanse
import UIKit

class InitialStartCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    var navigationController: BaseNavigationController
    
    private let viewController: InitialStartVC
    private let viewModel: InitialStartVM
    
    // MARK: - If too much navigaton, inject using propertyInjector
    private let testNavigation: Provider<TestScreenCoordinator>
    
    init(
        _ navigationController: BaseNavigationController,
        viewController: InitialStartVC,
        viewModel: InitialStartVM,
        testNavigation: Provider<TestScreenCoordinator>
    ) {
        self.navigationController = navigationController
        self.viewController = viewController
        self.viewModel = viewModel
        self.testNavigation = testNavigation
    }
    
    func start() {
        viewController.viewModel = viewModel
        viewModel.coordinator = self
        navigationController.setViewControllers([viewController], animated: true)
    }
    
    func childDidFinish(coordinator: Coordinator) {
        if let index = childCoordinators.firstIndex(where: { $0 === coordinator }) {
            childCoordinators.remove(at: index)
        }
    }
    
    func nextScreen() {
        let navigate = testNavigation.get()
        childCoordinators.append(navigate)
        navigate.parentCoordinator = self
        navigate.start()
    }
}
