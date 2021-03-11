//
//  Infix.swift
//  Ajaib
//
//  Created by Kelvin Yusuf on 08/03/21.
//

import UIKit

infix operator ~!~ : AssignmentPrecedence

func ~!~<T:AnyObject>(left:T, right:(T)->()) -> T {
    right(left)
    return left
}

