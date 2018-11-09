//
//  Memory.swift
//  Mapache
//
//  Created by Luis Salazar on 10/17/18.
//  Copyright © 2018 Luis Salazar. All rights reserved.
//

import Foundation

class Memory {
    
    // MARK: - Constants
    private let intBase = 0
    private let floatBase = 1000
    private let charBase = 2000
    private let boolBase = 3000
    private let letreroBase = 4000
    
    // MARK: - Variables
    private var ints: [Int] = []
    private var floats: [Float] = []
    private var chars: [Character] = []
    private var bools: [Bool] = []
    private var letreros: [String] = []
    
    private var baseAddress = 0
    
    // MARK: - Get Variables
    private var intStartAddress : Address {
        get {
            return baseAddress + intBase
        }
    }
    private var floatStartAddress : Address {
        get {
            return baseAddress + floatBase
        }
    }
    private var charStartAddress : Address {
        get {
            return baseAddress + charBase
        }
    }
    private var boolStartAddress : Address {
        get {
            return baseAddress + boolBase
        }
    }
    private var letreroStartAddress : Address {
        get {
            return baseAddress + letreroBase
        }
    }
    
    // MARK: - Init
    init(baseAddress: Address){
        self.baseAddress = baseAddress
    }
    
    // MARK: - Public functions
    
    func setValue(_ value: Any, in address: Address) {
        #warning ("TODO: ")
    }
    
    func getValue(from address: Address) -> (Any, Type) {
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
    
    // MARK: - Private functions
    
    private func saveInt(_ val: Int) -> Address {
        ints.append(val)
        return intStartAddress + ints.count - 1
    }
    
    private func saveFloat(_ val: Float) -> Address {
        floats.append(val)
        return floatStartAddress + floats.count - 1
    }
    
    private func saveChar(_ val: Character) -> Address {
        chars.append(val)
        return charStartAddress + chars.count - 1
    }

    private func saveInt(_ val: Bool) -> Address {
        bools.append(val)
        return boolStartAddress + bools.count - 1
    }
}
