//
//  BaseNavigationController.swift
//  Ajaib
//
//  Created by Kelvin Yusuf on 05/03/21.
//

import UIKit
import Cleanse

class BaseNavigationController: UINavigationController {
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPurple
        isNavigationBarHidden = true
        setNavigationBarHidden(true, animated: false)
    }
}
