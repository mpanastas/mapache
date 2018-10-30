//
//  Quadruple.swift
//  Mapache
//
//  Created by Luis Salazar on 10/18/18.
//  Copyright © 2018 Luis Salazar. All rights reserved.
//

import Foundation

class Quadruple {
    var op: Int
    var operandL: Int?
    var operandR: Int?
    var temp: Int?
    
    init(_ op: Int,_ opL: Int?,_ opR: Int?,_ temp:Int?) {
        self.op = op
        self.operandL = opL
        self.operandR = opR
        self.temp = temp
    }
}
