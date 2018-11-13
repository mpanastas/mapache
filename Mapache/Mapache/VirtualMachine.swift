//
//  VirtualMachine.swift
//  Mapache
//
//  Created by Jorge Anastas on 11/8/18.
//  Copyright © 2018 Luis Salazar. All rights reserved.
//

import Foundation


extension Wizard {
    
    func runQuads(_ quadruples: [Quadruple]) {
        
    }
    
    func add(left: Address, right: Address, temp: Address) {
        
    }
    
    
}

//func runQuads(quadruples: [Quadruple]){ //the creation of quadruples is pending
//    var quadCount = 0
//    
//    while quadCount < quadruple[quadrupleNumber] { //check each quadruple
//    
//        switch quadruple.oper {
//            
//            
//        // Addition +
//        case .Sum :
//        add(leftAddress: quadruple.operandL!, rightAddress: quadruple.operandR!, resAddress : quadruple.temp!)
//        // Subtraction -
//        case .Sub :
//        sub(leftAddress: quadruple.operandL!, rightAddress: quadruple.operandR!, resAddress : quadruple.temp!)
//        // Multiplication *
//        case .Mult:
//        multiply(leftAddress: quadruple.operandL!, rightAddress: quadruple.operandR!, resAddress : quadruple.temp!)
//        // Division /
//        case .Div:
//        divide(leftAddress: quadruple.operandL!, rightAddress: quadruple.operandR!, resAddress : quadruple.temp!)
//        // Assign =
//        case .Assign:
//        assign(leftAddress : quadruple.operandL!, resAddress : quadruple.temp!)
//        // Equal ==
//        case .Equal:
//        equal(leftAddress: quadruple.operandL!, rightAddress: quadruple.operandR!, resAddress : quadruple.temp!)
//        // Not equal !=
//        case .NotEqual:
//        notEqual(leftAddress: quadruple.operandL!, rightAddress: quadruple.operandR!, resAddress : quadruple.temp!)
//        // Less than <
//        case .LessThan:
//        lessThan(leftAddress: quadruple.operandL!, rightAddress: quadruple.operandR!, resAddress : quadruple.temp!)
//        // Greater than >
//        case .GreaterThan:
//        greatThan(leftAddress: quadruple.operandL!, rightAddress: quadruple.operandR!, resAddress : quadruple.temp!)
//        // And &&
//        case .And:
//        andOperator(leftAddress: quadruple.operandL!, rightAddress: quadruple.operandR!, resAddress : quadruple.temp!)
//        // Or ||
//        case .Or:
//        orOperator(leftAddress: quadruple.operandL!, rightAddress: quadruple.operandR!, resAddress : quadruple.temp!)
//        // Go to
//        case .GoTo :
//        goTo(leftAddress: quadruple.operandL!, resAddress : quadruple.temp!)
//        // Go to if true
//        case .GoToTrue :
//        goToT(leftAddress: quadruple.operandL!, resAddress : quadruple.temp!)
//        // Go to if false
//        case .GoToFalse:
//        goToF(leftAddress: quadruple.operandL!, resAddress : quadruple.temp!)
//        // ERA size
//        case .ERA :
//        era(leftAddress: quadruple.operandL!, resAddress : quadruple.temp!)
//        // Go to subrutine (go to function)
//        case .GoSub:
//        gosub(leftAddress : quadruple.opernadL!, resAddress : quadruple.temp!)
//        // Set parameter
//        case .Param:
//        param(leftAddress: quadruple.operandL!, resAddress : quadruple.temp!)
//        // End procedure (end function)
//        case .EndProc:
//        endFunc()
//        // Print
//        case .Print:
//        printOp(leftAddress: quadruple.operandL!)
//        // Verify
//        case .Verify:
//        verify(leftAddress: quadruple.operandL!, rightAddress: quadruple.operandR!, resAddress : quadruple.temp!)
//        // Return value of function
//        case .Return:
//        returnOp(leftAddress: quadruple.operandL!)
//        // End main?
//        case .End:
//         end() //for main(?), may not be necessay
//        }
//        
//    }
//    
//}
//
//// MARK : Aritmetic Operation
//
///**
// function to do the addition and save the result in the corresponding address
// **/
//func add(leftAddress:Int, rightAddress:Int, resAddress:Int){
//    
//    // more code*
//    let leftT = getValue(from:leftAddress)
//    let rightT = getValue(from:rightAddress)
//    
//    if leftT.1 == .Int && rightT.1 == .Int {
//        let valueL = Float(leftT.0 as! Int)
//        let valueR = Float(rightT.0 as! Int)
//        
//        setValue(valueL + valueR, in: resAddress)
//        return
//    } else if leftT.1 == .Int && rightT.1 == .Float {
//        let valueL = Float(leftT.0 as! Int)
//        let valueR = rightT.0 as! Float
//        
//        setValue(valueL + valueR, in: resAddress)
//        return
//    } else if leftT.1 == .Float && rightT.1 == .Int {
//        let valueL = leftT.0 as! Float
//        let valueR = Float(rightT.0 as! Int)
//        
//        setValue(valueL + valueR, in: resAddress)
//        return
//    }
//    
//    let valueL = leftT.0 as! Float
//    let valueR = rightT.0 as! Float
//    
//    setValue(valueL + valueR, in: resAddress)
//}
//
///**
// function to do the substraction and save the result in the corresponding address
// **/
//func sub(leftAddress:Int, rightAddress:Int, resAddress:Int){
//    let leftT = getValue(from:leftAddress)
//    let rightT = getValue(from:rightAddress)
//    
//    if leftT.1 == .Int && rightT.1 == .Int {
//        let valueL = Float(leftT.0 as! Int)
//        let valueR = Float(rightT.0 as! Int)
//        
//        setValue(valueL - valueR, in: resAddress)
//        return
//    } else if leftT.1 == .Int && rightT.1 == .Float {
//        let valueL = Float(leftT.0 as! Int)
//        let valueR = rightT.0 as! Float
//        
//        setValue(valueL - valueR, in: resAddress)
//        return
//    } else if leftT.1 == .Float && rightT.1 == .Int {
//        let valueL = leftT.0 as! Float
//        let valueR = Float(rightT.0 as! Int)
//        
//        setValue(valueL - valueR, in: resAddress)
//        return
//    }
//    
//    let valueL = leftT.0 as! Float
//    let valueR = rightT.0 as! Float
//    
//    setValue(valueL - valueR, in: resAddress)
//}
//
///**
// function to do the division and save the result in the corresponding address
// **/
//func divide(leftAddress:Int, rightAddress:Int, resAddress:Int){
//    let leftT = getValue(from:leftAddress)
//    let rightT = getValue(from:rightAddress)
//    
//    if leftT.1 == .Int && rightT.1 == .Int {
//        let valueL = Float(leftT.0 as! Int)
//        let valueR = Float(rightT.0 as! Int)
//        
//        setValue(valueL / valueR, in: resAddress)
//        return
//    } else if leftT.1 == .Int && rightT.1 == .Float {
//        let valueL = Float(leftT.0 as! Int)
//        let valueR = rightT.0 as! Float
//        
//         setValue(valueL / valueR, in: resAddress)
//        return
//    } else if leftT.1 == .Float && rightT.1 == .Int {
//        let valueL = leftT.0 as! Float
//        let valueR = Float(rightT.0 as! Int)
//        
//         setValue(valueL / valueR, in: resAddress)
//        return
//    }
//    
//    let valueL = leftT.0 as! Float
//    let valueR = rightT.0 as! Float
//    
//    setValue(valueL / valueR, in: resAddress)
//  
//}
//
///**
// function to do the multiplication and save the result in the corresponding address
// **/
//func multiply(leftAddress:Int, rightAddress:Int, resAddress:Int){
//    let leftT = getValue(from:leftAddress)
//    let rightT = getValue(from:rightAddress)
//    
//    if leftT.1 == .Int && rightT.1 == .Int {
//        let valueL = Float(leftT.0 as! Int)
//        let valueR = Float(rightT.0 as! Int)
//        
//        setValue(valueL * valueR, in: resAddress)
//        return
//    } else if leftT.1 == .Int && rightT.1 == .Float {
//        let valueL = Float(leftT.0 as! Int)
//        let valueR = rightT.0 as! Float
//        
//        setValue(valueL * valueR, in: resAddress)
//        return
//    } else if leftT.1 == .Float && rightT.1 == .Int {
//        let valueL = leftT.0 as! Float
//        let valueR = Float(rightT.0 as! Int)
//        
//        setValue(valueL * valueR, in: resAddress)
//        return
//    }
//    
//    let valueL = leftT.0 as! Float
//    let valueR = rightT.0 as! Float
//    
//    setValue(valueL * valueR, in: resAddress)
//}
//
///**
// function to assign and save the result in the corresponding address
// **/
//func assign(leftAddress:Int, resAddress:Int){
//    //code
//}
//
//// MARK : Logic Operation
//
///**
// function to evaluate lesser than and save the result in the corresponding address
// **/
//func lessThan(leftAddress:Int, rightAddress:Int, resAddress:Int){
//    let leftT = getValue(from:leftAddress)
//    let rightT = getValue(from:rightAddress)
//    
//    if leftT.1 == .Int && rightT.1 == .Int {
//        let valueL = Float(leftT.0 as! Int)
//        let valueR = Float(rightT.0 as! Int)
//        
//        setValue(valueL < valueR, in: resAddress)
//        return
//    } else if leftT.1 == .Int && rightT.1 == .Float {
//        let valueL = Float(leftT.0 as! Int)
//        let valueR = rightT.0 as! Float
//        
//        setValue(valueL < valueR, in: resAddress)
//        return
//    } else if leftT.1 == .Float && rightT.1 == .Int {
//        let valueL = leftT.0 as! Float
//        let valueR = Float(rightT.0 as! Int)
//        
//        setValue(valueL < valueR, in: resAddress)
//        return
//    }
//    
//    let valueL = leftT.0 as! Float
//    let valueR = rightT.0 as! Float
//    
//    setValue(valueL < valueR, in: resAddress)
//}
//
///**
// function to evaluate greater than and save the result in the corresponding address
// **/
//func greatThan(leftAddress:Int, rightAddress:Int, resAddress:Int){
//    //cod
//}
//
///**
// function to evaluate not equal than and save the result in the corresponding address
// **/
//func notEqual(leftAddress:Int, rightAddress:Int, resAddress:Int){
//    let leftT = virtualMemory.getValueIn(address: leftAddress)
//    let rightT = virtualMemory.getValueIn(address: rightAddress)
//    
//    if leftT.1 == .Int && rightT.1 == .Int {
//        let valueL = leftT.0 as! Int
//        let valueR = rightT.0 as! Int
//        
//        setValue(valueL == valueR, in: resAddress)
//        return
//    } else if leftT.1 == .Float && rightT.1 != .Float {
//        let valueL = leftT.0 as! Float
//        let valueR = rightT.0 as! Float
//        
//        setValue(valueL == valueR, in: resAddress)
//        return
//    } else if leftT.1 == .String && rightT.1 != .String {
//        let valueL = leftT.0 as! String
//        let valueR = rightT.0 as! String
//        
//        setValue(valueL == valueR, in: resAddress)
//        return
//    } else if leftT.1 == .Bool && rightT.1 != .Bool {
//        let valueL = leftT.0 as! Bool
//        let valueR = rightT.0 as! Bool
//    
//        setValue(valueL != valueR, in: resAddress)
//        return
//    }
//}
//
///**
// function to evaluate "and" operator than and save the result in the corresponding address
// **/
//func andOperator(leftAddress:Int, rightAddress:Int, resAddress:Int){
//    //code
//    let leftT = getValue(from: leftAddress) //getValue in memory address
//    let rightT = getValue(from: rightAddress) //getValue in memory address
//    
//    let valueL = leftT.0 as! Bool
//    let valueR = rightT.0 as! Bool
//    
//    setValue(valueL && valueR, in: resAddress) //from Virtual memory
//}
//
///**
// function to evaluate "or" operator and save the result in the corresponding address
// **/
//func orOperator(leftAddress:Int, rightAddress:Int, resAddress:Int){
//    let leftT = getValue(from: leftAddress)
//    let rightT = getValue(from: rightAddress) //getValue in memory address
//    
//    let valueL = leftT.0 as! Bool
//    let valueR = rightT.0 as! Bool
//    
//     setValue(valueL || valueR, in: resAddress) //from Virtual memory
//}
//
///**
// function to evaluate "==" operator and save the result in the corresponding address
// **/
//func equal(leftAddress:Int, rightAddress:Int, resAddress:Int){
//    let leftT = getValue(from: leftAddress)
//    let rightT = getValue(from: rightAddress)
//    
//    if leftT.1 == .Int && rightT.1 == .Int {
//        let valueL = leftT.0 as! Int
//        let valueR = rightT.0 as! Int
//        
//        setValue(valueL == valueR, in: resAddress)
//        return
//    } else if leftT.1 == .Float && rightT.1 == .Float {
//        let valueL = leftT.0 as! Float
//        let valueR = rightT.0 as! Float
//        
//        setValue(valueL == valueR, in: resAddress)
//        return
//    } else if leftT.1 == .String && rightT.1 == .String {
//        let valueL = leftT.0 as! String
//        let valueR = rightT.0 as! String
//        
//        setValue(valueL == valueR, in: resAddress)
//        return
//    } else if leftT.1 == .Bool && rightT.1 == .Bool {
//        let valueL = leftT.0 as! Bool
//        let valueR = rightT.0 as! Bool
//        
//        setValue(valueL == valueR, in: resAddress)
//        return
//    }
//}
//
//
//// MARK : Instructions
//// MARK : GOTO
///**
// function to create GoToF and save the result in the corresponding address
// **/
//func goToF(leftAddress:Int, resAddress:Int){
//    if (!(getValue(from: quadruple.operandL!).0 as! Bool)){
//     quadNum = quadruple.varRes! - 1
//    }
//}
//
///**
// function to create GoToT and save the result in the corresponding address
// **/
//func goToT(leftAddress:Int, resAddress:Int){
//    if (!(getValue(from: quadruple.operandL!).0 as! Bool)){
//        quadNum = quadruple.varRes! - 1
//    }
//}
//
///**
// function to create GoTo and save the result in the corresponding address
// **/
//func goTo(leftAddress:Int, resAddress:Int){
//    quadNum = quadruple.varRes! - 1
//}
//
///**
// function to create ERA and save the result in the corresponding address
// **/
//func era(leftAddress:Int, resAddress:Int){
//    //code
//}
//
///**
// function to create GoSub and save the result in the corresponding address
// **/
//func goSub(leftAddress:Int, resAddress:Int){
//    //code
//}
//
///**
// function to create PARAM and save the result in the corresponding address
// **/
//func param(leftAddress:Int, resAddress:Int){
//    //get value
//    let valueT = getValue(from: leftAddress)
//
//    // Set Value in top memory of stack
//    if valueT.1 == .Int {
//        let value = valueT.0 as! Int
//        setParamValue(value, in: address)
//    } else if valueT.1 == .Float {
//        let value = valueT.0 as! Float
//        setParamValue(value, in: address)
//    } else if valueT.1 == .String {
//        let value = valueT.0 as! String
//        setParamValue(value, in: address)
//    } else if valueT.1 == .Bool {
//        let value = valueT.0 as! Bool
//        setParamValue(value, in: address)
//    } else {
//        print("ERROR - The data type is incorrect")
//    }
//}
//
///**
// function to create ENDPROC and save the result in the corresponding address
// **/
//func endFunc(){
//    //code
//}
//
///**
// function to create ENDPROC and save the result in the corresponding address
// **/
//func end(){
//    //code
//}
//
///**
// function to validate the limits and save the result in the corresponding address
// **/
//func verify(){
//    if quadruple.leftOperand! < getValue(from:quadruple.resultVar!).0 as! Int || quadruple.operandL! < 0 {
//        ParseTestFailBlock("Index in array is out of bounds");
//        quadrupleNumber = quadruples.count
//        EndBlock();
//    }
//}
//
///**
// function to create RETURN and save the result in the corresponding address
// **/
//func returnOp(leftAddress:Int){
//    //code
//}
//
///**
// function to create RETURN and save the result in the corresponding address
// **/
//func printOp(leftAddress:Int){
//    //code
//}
