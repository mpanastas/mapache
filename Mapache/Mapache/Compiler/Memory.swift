//
//  Memory.swift
//  Mapache
//
//  Created by Luis Salazar on 10/17/18.
//  Copyright © 2018 Luis Salazar. All rights reserved.
//

import Foundation

struct Memory {
    
    // MARK: - Constants
    private let intBase = 0
    private let floatBase = 1000
    private let charBase = 2000
    private let boolBase = 3000
    private let stringBase = 4000
    
    // MARK: - Variables
    private var ints: [Int?] = []
    private var floats: [Float?] = []
    private var chars: [Character?] = []
    private var bools: [Bool?] = []
    private var strings: [String?] = []
    
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
    private var stringStartAddress : Address {
        get {
            return baseAddress + stringBase
        }
    }
    
    // MARK: - Init
    init(baseAddress: Address){
        self.baseAddress = baseAddress
    }
    
    // MARK: - Custom functions
    
    mutating func save(_ value: Any, in address: Address) {
        switch address {
        case ..<floatStartAddress:
            ints[address - intStartAddress] = value as? Int
        case ..<charStartAddress:
            floats[address - floatStartAddress] = value as? Float
        case ..<boolStartAddress:
            chars[address - charStartAddress] = value as? Character
        case ..<stringStartAddress:
            bools[address - boolStartAddress] = value as? Bool
        default:
            strings[address - stringStartAddress] = value as? String
        }
    }
    
    mutating func save(_ type: Type) -> Address {
        switch type {
        case .Int:
            return save(int: nil)
        case .Float:
            return save(float: nil)
        case .Char:
            return save(char: nil)
        case .Bool:
            return save(bool: nil)
        case .String:
            return save(string: nil)
        default:
            return -1
        }
    }
    
    mutating func reset() {
        ints.removeAll()
        floats.removeAll()
        chars.removeAll()
        bools.removeAll()
        strings.removeAll()
    }
    
    func getValue(from address: Address) -> (value: Any, type: Type) {
        switch address {
        case ..<floatStartAddress:
            return (ints[address - intStartAddress]!, .Int)
        case ..<charStartAddress:
            return (floats[address - floatStartAddress]!, .Float)
        case ..<boolStartAddress:
            return (chars[address - charStartAddress]!, .Char)
        case ..<stringStartAddress:
            return (bools[address - boolStartAddress]!, .Bool)
        default:
            return (strings[address - stringStartAddress]!, .String)
        }
    }
    
    mutating func save(int: Int?) -> Address {
        ints.append(int)
        return intStartAddress + ints.count - 1
    }
    
    mutating func save(float: Float?) -> Address {
        floats.append(float)
        return floatStartAddress + floats.count - 1
    }
    
    mutating func save(char: Character?) -> Address {
        chars.append(char)
        return charStartAddress + chars.count - 1
    }

    mutating func save(bool: Bool?) -> Address {
        bools.append(bool)
        return boolStartAddress + bools.count - 1
    }
    
    mutating func save(string: String?) -> Address {
        strings.append(string)
        return stringStartAddress + strings.count - 1
    }
    
    mutating func allocateArrays(){
        for _ in 1...1000 {
            ints.append(nil)
            floats.append(nil)
            bools.append(nil)
            chars.append(nil)
        }
    }

    
    // MARK: Find functions
    // Only for constants table
    
    func find(bool: Bool) -> Address? {
        if let index = bools.firstIndex(of: bool) {
            return index + boolStartAddress
        }
        
        return nil
    }
    
    func find(char: Character) -> Address? {
        if let index = chars.firstIndex(of: char) {
            return index + charStartAddress
        }
        
        return nil
    }
    
    func find(float: Float) -> Address? {
        if let index = floats.firstIndex(of: float) {
            return index + floatStartAddress
        }
        
        return nil
    }
    
    func find(int: Int) -> Address? {
        if let index = ints.firstIndex(of: int) {
            return index + intStartAddress
        }
        
        return nil
    }
    
    func find(string: String) -> Address? {
        if let index = strings.firstIndex(of: string) {
            return index + stringStartAddress
        }
        
        return nil
    }
}
