//
//  Memory.swift
//  Mapache
//
//  Created by Luis Salazar on 10/17/18.
//  Copyright © 2018 Luis Salazar. All rights reserved.
//

import Foundation

class Memory {
    private let intBase = 0
    private let floatBase = 1000
    private let charBase = 2000
    private let boolBase = 3000
    private let letreroBase = 4000
    
    var ints: [Int] = []
    var floats: [Float] = []
    var chars: [Character] = []
    var bools: [Bool] = []
    var letreros: [String] = []
    
    var baseAddress = 0
    
    var intStartAddress : Address {
        get {
            return baseAddress + intBase
        }
    }
    var floatStartAddress : Address {
        get {
            return baseAddress + floatBase
        }
    }
    var charStartAddress : Address {
        get {
            return baseAddress + charBase
        }
    }
    var boolStartAddress : Address {
        get {
            return baseAddress + boolBase
        }
    }
    var letreroStartAddress : Address {
        get {
            return baseAddress + letreroBase
        }
    }
    
    init(baseAddress: Address){
        self.baseAddress = baseAddress
    }
    
    
    func getVal(from address: Address) -> (Any, Type) {
        switch address {
        case _ where address < floatStartAddress:
            // int
            return (ints[address - intStartAddress], .Int)
        case _ where address < charStartAddress:
            // float
            return (floats[address - floatStartAddress], .Float)
        case _ where address < boolStartAddress:
            // char
            return (chars[address - charStartAddress], .Char)
        case _ where address < letreroStartAddress:
            // bool
            return (bools[address - boolStartAddress], .Bool)
        default:
            // letrero
            return (letreros[address - letreroStartAddress], .Letrero)
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
