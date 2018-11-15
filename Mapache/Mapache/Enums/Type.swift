//
//  Type.swift
//  Mapache
//
//  Created by Luis Salazar on 11/5/18.
//  Copyright © 2018 Luis Salazar. All rights reserved.
//

import Foundation

enum Type: Int {
    case Int = 1
    case Float = 2
    case Char = 3
    case Bool = 4
    case String = 5
    case Void = 6
    case Error = -1
    
    init(_ string: String) {
        switch string.lowercased() {
        case "int":
            self = .Int
        case "float":
            self = .Float
        case "char":
            self = .Char
        case "bool":
            self = .Bool
        case "void":
            self = .Void
        case "letrero":
            self = .String
        default:
            self = .Error
        }
    }
}

//
//enum Type: String {
//    case Int
//    case Float
//    case Char
//    case Bool
//    case Void
//}
