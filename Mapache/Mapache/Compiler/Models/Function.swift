//
//  Function.swift
//  Mapache
//
//  Created by Luis Salazar on 10/4/18.
//  Copyright © 2018 Luis Salazar. All rights reserved.
//

import Foundation

struct Function: Equatable {
    static func == (lhs: Function, rhs: Function) -> Bool {
        return lhs.address == rhs.address
    }
    
    
    var returnType: Type!
    var address: Address!
    var quadAddress: Int!
    var variables = [Name: Variable]() 
    var paramsSecuence = [Type]() // used to know parameters of function
    
    init(returnType: Type, address: Address, quadAddress: Int) {
        self.returnType = returnType
        self.address = address
        self.quadAddress = quadAddress
    }
}
