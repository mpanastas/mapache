//
//  Variable.swift
//  Mapache
//
//  Created by Luis Salazar on 10/4/18.
//  Copyright © 2018 Luis Salazar. All rights reserved.
//

import Foundation



struct Variable {
    var type: Type!
    var address: Address!
    var arrSize: Int?
    
    init(_ type: Type, _ address: Address, _ arrSize: Int? = nil){
        self.type = type
        self.address = address
        self.arrSize = arrSize
    }
}
