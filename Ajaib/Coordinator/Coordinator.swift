//
//  Coordinator.swift
//  Ajaib
//
//  Created by Kelvin Yusuf on 05/03/21.
//

import UIKit

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get }
    var navigationController: BaseNavigationController { get set }
    func start()
}
