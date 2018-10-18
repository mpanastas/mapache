//
//  Memory.swift
//  Mapache
//
//  Created by Luis Salazar on 10/17/18.
//  Copyright © 2018 Luis Salazar. All rights reserved.
//

import Foundation

class Memory {
    var ints: [Int] = []
    var floats: [Float] = []
    var chars: [Character] = []
    var bools: [Bool] = []
    
    var intStartAddress = 0
    var floatStartAddress = 1000
    var charStartAddress = 2000
    var boolStartAddress = 3000
//    localInts = 5000
//    localFloats = 7000
//    localChars = 9000
//    localBools = 11000
//
//    tempInts = 13000
//    tempFloats = 15000
//    tempChars = 17000
//    tempBools = 19000
    
    func getVal(from address: Int) -> (Any, Type) {
        switch address {
        case _ where address < floatStartAddress:
            // int
            return (ints[address - intStartAddress], Type.Int)
        case _ where address < charStartAddress:
            // float
            return (floats[address - floatStartAddress], Type.Float)
        case _ where address < boolStartAddress:
            // char
            return (chars[address - charStartAddress], Type.Char)
        default:
            // bool
            return (bools[address - boolStartAddress], Type.Bool)
        }
    }
    
    func saveInt(_ val: Int) -> Address {
        ints.append(val)
        return intStartAddress + ints.count - 1
    }
    
    func saveFloat(_ val: Float) -> Address {
        floats.append(val)
        return floatStartAddress + floats.count - 1
    }
    
    func saveChar(_ val: Character) -> Address {
        chars.append(val)
        return charStartAddress + chars.count - 1
    }

    func saveInt(_ val: Bool) -> Address {
        bools.append(val)
        return boolStartAddress + bools.count - 1
    }
}
