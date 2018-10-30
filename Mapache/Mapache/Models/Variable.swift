//
//  Variable.swift
//  Mapache
//
//  Created by Luis Salazar on 10/4/18.
//  Copyright © 2018 Luis Salazar. All rights reserved.
//

import Foundation

enum Type: Int {
    case Int = 1
    case Float = 2
    case Char = 3
    case Bool = 4
    case Void = 5
}

struct Variable {
    var type: Type!
    var virtualAddress: Int!
    var arrSize: Int?
    var dimension: [Dimension] = []
    #warning("We dont know if we are going to define a variable for the scope")
    //var scope: globar or local
}
