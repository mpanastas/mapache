//
//  VirtualMachine.swift
//  Mapache
//
//  Created by Jorge Anastas on 11/8/18.
//  Copyright © 2018 Luis Salazar. All rights reserved.
//

import Foundation

func runQuads(quadruples: [Quadruple]){ //the creation of quadruples is pending
    var quadCount = 0
    while quadCount < quadruple[quadrupleNumber] { //check each quadruple
        switch quadruple.oper{
        case .Sum:
            runAddition(leftAdress: quadruple.operandL!, rightAdress: quadruple.operandR!, resAdress : quadruple.temp!)
            break
        case .Substract:
            break
        case .Division:
            break
        case .Multiplication:
            break
        case .Lower:
            break
        case .Greater:
            break
        case .NotEqual:
            break
        case .And:
            break
        case .Or:
            break
        case .EqualSign:
            break
        case .GOTOF:
            break
        case .GOTOT: //may not be needed
            break
        case .GOTO:
            break
        case .ERA:
            break
        case PARAM:
            break
        case .ENDFUNC:
            break
        case .END:
            break
        case .RETURN:
            break
        case .VER:
            break
            
        }
        
    }
    
}
