//
//  Quadruple.swift
//  Mapache
//
//  Created by Luis Salazar on 10/18/18.
//  Copyright © 2018 Luis Salazar. All rights reserved.
//

import Foundation

class Quadruple {
    var op: Op
    var operandLeft: Address?
    var operandRight: Address?
    var temp: Address?
    
    init(_ op: Op,_ opL: Address?,_ opR: Address?,_ temp: Address?) {
        self.op = op
        self.operandLeft = opL
        self.operandRight = opR
        self.temp = temp
    }
}
