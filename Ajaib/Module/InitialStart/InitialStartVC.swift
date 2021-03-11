//
//  InitialStartVC.swift
//  Ajaib
//
//  Created by Kelvin Yusuf on 08/03/21.
//

import UIKit
import Cleanse
import SnapKit

class InitialStartVC: UIViewController {
    // use protocol, so that the VC cannot access other variables outside of the protocol
    var viewModel: InitialStartVMProtocol?
    
    private lazy var buttonNavigate = UIButton() ~!~ {
        $0.setTitle("Navigate", for: .normal)
        $0.setTitleColor(.white, for: .normal)
        $0.setTitleColor(.cyan, for: .highlighted)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        
        view.addSubview(buttonNavigate)
        buttonNavigate.snp.makeConstraints {
            $0.centerX.centerY.equalToSuperview()
        }
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(navigateEvent))
        buttonNavigate.addGestureRecognizer(tap)
    }
    
    @objc func navigateEvent() {
        viewModel?.navigateTest()
    }
}
