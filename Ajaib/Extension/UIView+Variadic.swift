//
//  UIView+Variadic.swift
//  Ajaib
//
//  Created by Kelvin Yusuf on 08/03/21.
//

import UIKit

extension UIView {
    func addSubviews(views: UIView...) {
        views.forEach {
            self.addSubview($0)
        }
    }
}
