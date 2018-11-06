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
    var startAddress: Int
    var variables = [Name: Variable]() 
    #warning("We still dont know if it's better to have the parameter on a separate dictionary or have them inside the 'variables' dictionary")
    var parameters = [Name: Variable]()
    var paramsSecuence = [Type]() // used to know parameters of function
    
    init(returnType: Type, startAddress: Int) {
        self.returnType = returnType
        self.startAddress = startAddress
    }
}
