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
    case Sub = 2
    // Multiplication *
    case Mult = 3
    // Division /
    case Div = 4
    // Assign =
    case Assign = 5
    // Equal ==
    case Equal = 6
    // Not equal !=
    case NotEqual = 7
    // Less than <
    case LessThan = 8
    // Greater than >
    case GreaterThan = 9
    // And &&
    case And = 10
    // Or ||
    case Or = 11
    // Go to
    case GoTo = 12
    // Go to if true
    case GoToTrue = 13
    // Go to if false
    case GoToFalse = 14
    // ERA size
    case ERA = 15
    // Go to subrutine (go to function)
    case GoSub = 16
    // Set parameter
    case Param = 17
    // End procedure (end function)
    case EndProc = 18
    // Print
    case Print = 19
    // Verify
    case Verify = 20
    // Return value of function
    case Return = 21
    // End main?
    case End = 22
    // False bottom mark
    case FalseBottomMark = 23
}
