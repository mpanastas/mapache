//
//  Function.swift
//  Mapache
//
//  Created by Luis Salazar on 10/4/18.
//  Copyright © 2018 Luis Salazar. All rights reserved.
//

import Foundation

struct Function {
    
    var returnType: Type!
    var startAddress: Address!
    var startQuadAddress: Int!
    var variables = [Name: Variable]() 
    var paramsSecuence = [Type]() // used to know parameters of function
    
    init(returnType: Type, startAddress: Int) {
        self.returnType = returnType
        self.startAddress = startAddress
    }
}
