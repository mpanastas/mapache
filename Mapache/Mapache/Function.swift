//
//  Function.swift
//  Mapache
//
//  Created by Luis Salazar on 10/4/18.
//  Copyright © 2018 Luis Salazar. All rights reserved.
//

import Foundation

struct Function {
    
    var type: Type!
    var variables = [String: Variable]() // name, variable
    var parameters = [String: Variable]()

    
    init(type: Type) {
        self.type = type
    }
}
