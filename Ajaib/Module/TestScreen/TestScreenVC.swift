//
//  TestScreenVC.swift
//  Ajaib
//
//  Created by Kelvin Yusuf on 12/03/21.
//

import UIKit
import Cleanse
import SnapKit

class TestScreenVC: UIViewController {
    // use protocol, so that the VC cannot access other variables outside of the protocol
    var viewModel: TestScreenVMProtocol?
    
    private lazy var buttonNavigate = UIButton() ~!~ {
        $0.setTitle("TEST MOVE", for: .normal)
        $0.setTitleColor(.white, for: .normal)
        $0.setTitleColor(.cyan, for: .highlighted)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown
        navigationController?.isNavigationBarHidden = false
        navigationController?.setNavigationBarHidden(false, animated: false)
        
        view.addSubview(buttonNavigate)
        buttonNavigate.snp.makeConstraints {
            $0.centerX.centerY.equalToSuperview()
        }
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(doMove))
        buttonNavigate.addGestureRecognizer(tap)
    }
    
    @objc func doMove() {
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        // MARK: - Put deallocate inside back button, otherwise coordinator become nil, if you push VC
        viewModel?.testDeinit()
    }
    
    deinit {
        print("Revoke TEST VC")
    }
}
