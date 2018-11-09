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
    case Float
    case Char
    case Bool
    case Letrero
    case Void
    
    init?(_ string: String) {
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
            self = .Letrero
        default:
            return nil
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
