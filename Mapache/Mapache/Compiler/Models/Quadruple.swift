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
    var operandLeft: Int?
    var operandRight: Int?
    var temp: Int?
    
    init(_ op: Op,_ opL: Int?,_ opR: Int?,_ temp:Int?) {
        self.op = op
        self.operandLeft = opL
        self.operandRight = opR
        self.temp = temp
    }
}
