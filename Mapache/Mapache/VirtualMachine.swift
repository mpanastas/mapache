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
    
        switch quadruple.oper {
        
        case .Sum:
            add(leftAddress: quadruple.operandL!, rightAddress: quadruple.operandR!, resAddress : quadruple.temp!)
            break
        case .Substract:
            sub(leftAddress: quadruple.operandL!, rightAddress: quadruple.operandR!, resAddress : quadruple.temp!)
            break
        case .Division:
            divide(leftAddress: quadruple.operandL!, rightAddress: quadruple.operandR!, resAddress : quadruple.temp!)
            break
        case .Multiplication:
             multiply(leftAddress: quadruple.operandL!, rightAddress: quadruple.operandR!, resAddress : quadruple.temp!)
            break
        case .Assign:
            assign(leftAddress : quadruple.operandL!, resAddress : quadruple.temp!)
        case .Lower:
            lessThan(leftAddress: quadruple.operandL!, rightAddress: quadruple.operandR!, resAddress : quadruple.temp!)
            break
        case .Greater:
            greatThan(leftAddress: quadruple.operandL!, rightAddress: quadruple.operandR!, resAddress : quadruple.temp!)
            break
        case .NotEqual:
            notEqual(leftAddress: quadruple.operandL!, rightAddress: quadruple.operandR!, resAddress : quadruple.temp!)
            break
        case .And:
            andOperator(leftAddress: quadruple.operandL!, rightAddress: quadruple.operandR!, resAddress : quadruple.temp!)
            break
        case .Or:
            orOperator(leftAddress: quadruple.operandL!, rightAddress: quadruple.operandR!, resAddress : quadruple.temp!)
            break
        case .Equal:
            equal(leftAddress: quadruple.operandL!, rightAddress: quadruple.operandR!, resAddress : quadruple.temp!)
            break
        case .GOTOF:
            goToF(leftAddress: quadruple.operandL!, resAddress : quadruple.temp!)
            break
        case .GOTOT: //may not be needed
            goToT(leftAddress: quadruple.operandL!, resAddress : quadruple.temp!)
            break
        case .GOTO:
            goTo(leftAddress: quadruple.operandL!, resAddress : quadruple.temp!)
            break
        case .ERA:
            era(leftAddress: quadruple.operandL!, resAddress : quadruple.temp!)
            break
        case .PARAM:
            param(leftAddress: quadruple.operandL!, resAddress : quadruple.temp!)
            break
        case .ENDFUNC:
            endFunc()
            break
        case .END:
            end() //for main(?), may not be necessay
            break
        case .RETURN:
            returnOp(leftAddress: quadruple.operandL!)
            break
        case .VER:
            verify(leftAddress: quadruple.operandL!, rightAddress: quadruple.operandR!, resAddress : quadruple.temp!)
            break
        case .PRINT:
            printOp(leftAddress: quadruple.operandL!)
            break
            
        }
        
    }
    
}

// MARK : Aritmetic Operation

/**
 function to do the addition and save the result in the corresponding address
 **/
func add(leftAddress:Int, rightAddress:Int, resAddress:Int){
    //code
}

/**
 function to do the substraction and save the result in the corresponding address
 **/
func sub(leftAddress:Int, rightAddress:Int, resAddress:Int){
    //code
}

/**
 function to do the division and save the result in the corresponding address
 **/
func divide(leftAddress:Int, rightAddress:Int, resAddress:Int){
    //code
}

/**
 function to do the multiplication and save the result in the corresponding address
 **/
func multiply(leftAddress:Int, rightAddress:Int, resAddress:Int){
    //code
}

/**
 function to assign and save the result in the corresponding address
 **/
func assign(leftAddress:Int, resAddress:Int){
    //code
}

// MARK : Logic Operation

/**
 function to evaluate lesser than and save the result in the corresponding address
 **/
func lessThan(leftAddress:Int, rightAddress:Int, resAddress:Int){
    //code
}

/**
 function to evaluate greater than and save the result in the corresponding address
 **/
func greatThan(leftAddress:Int, rightAddress:Int, resAddress:Int){
    //code
}

/**
 function to evaluate not equal than and save the result in the corresponding address
 **/
func notEqual(leftAddress:Int, rightAddress:Int, resAddress:Int){
    //code
}

/**
 function to evaluate "and" operator than and save the result in the corresponding address
 **/
func andOperator(leftAddress:Int, rightAddress:Int, resAddress:Int){
    //code
}

/**
 function to evaluate "or" operator and save the result in the corresponding address
 **/
func orOperator(leftAddress:Int, rightAddress:Int, resAddress:Int){
    //code
}

/**
 function to evaluate "==" operator and save the result in the corresponding address
 **/
func equal(leftAddress:Int, rightAddress:Int, resAddress:Int){
    //code
}


// MARK : Instructions
// MARK : GOTO
/**
 function to create GoToF and save the result in the corresponding address
 **/
func goToF(leftAddress:Int, resAddress:Int){
    //code
}

/**
 function to create GoToT and save the result in the corresponding address
 **/
func goToT(leftAddress:Int, resAddress:Int){
    //code
}

/**
 function to create GoTo and save the result in the corresponding address
 **/
func goTo(leftAddress:Int, resAddress:Int){
    //code
}

/**
 function to create ERA and save the result in the corresponding address
 **/
func era(leftAddress:Int, resAddress:Int){
    //code
}

/**
 function to create PARAM and save the result in the corresponding address
 **/
func param(leftAddress:Int, resAddress:Int){
    //code
}

/**
 function to create ENDPROC and save the result in the corresponding address
 **/
func endFunc(){
    //code
}

/**
 function to create ENDPROC and save the result in the corresponding address
 **/
func end(){
    //code
}

/**
 function to validate the limits and save the result in the corresponding address
 **/
func verify(leftAddress:Int, rightAddress:Int, resAddress:Int){
    //code
}

/**
 function to create RETURN and save the result in the corresponding address
 **/
func returnOp(leftAddress:Int){
    //code
}

/**
 function to create RETURN and save the result in the corresponding address
 **/
func printOp(leftAddress:Int){
    //code
}
