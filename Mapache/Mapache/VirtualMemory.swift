//
//  VirtualMemory.swift
//  Mapache
//
//  Created by Luis Salazar on 10/18/18.
//  Copyright © 2018 Luis Salazar. All rights reserved.
//

import Foundation

//let globalStartAdress = 100000
//let localStartAdress = 110000
//let constantStartAdress = 120000

//    localInts = 5000
//    localFloats = 7000
//    localChars = 9000
//    localBools = 11000
//
//    tempInts = 13000
//    tempFloats = 15000
//    tempChars = 17000
//    tempBools = 19000

class VirtualMemory {
    var globalMemory = Memory(baseAddress: 5000)
    var localMemory = Memory(baseAddress: 10000)
    var constantsMemory = Memory(baseAddress: 15000)
    
    func setValueIn(address: Int, resut: Any){
        //var realAdress = adress
        
        //code
    }
    
    var quadrupleRow = [Int]()
    
}
