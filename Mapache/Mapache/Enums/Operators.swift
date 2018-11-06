//
//  Enumerators.swift
//  Mapache
//
//  Created by Luis Salazar on 11/5/18.
//  Copyright © 2018 Luis Salazar. All rights reserved.
//

import Foundation

// Operators enum
enum Op: Int {
    // Addition +
    case Sum = 1
    // Subtraction -
    case Sub
    // Multiplication *
    case Mult
    // Division /
    case Div
    // Assign =
    case Assign
    // Equal ==
    case Equal
    // Not equal !=
    case NotEqual
    // Less than <
    case LessThan
    // Greater than >
    case GreaterThan
    // And &&
    case And
    // Or ||
    case Or
    // Go to
    case GoTo
    // Go to if true
    case GoToTrue
    // Go to if false
    case GoToFalse
    // ERA size
    case ERA
    // Go to subrutine (go to function)
    case GoSub
    // Set parameter
    case Param
    // End procedure (end function)
    case EndProc
    // Print
    case Print
    // Verify
    case Verify
    // Return value of function
    case Return
    // End main?
    case End
}
