//
//  VirtualMachine.swift
//  Mapache
//
//  Created by Jorge Anastas on 11/8/18.
//  Copyright © 2018 Luis Salazar. All rights reserved.
//

import Foundation


extension Wizard {
    
    func quads(_ quadruples: [Quadruple]) { //the creation of quadruples is pending
        var quadCount = 0
        
        while quadCount < quadruples.count { //check each quadruple
            let quadruple = quadruples[quadCount]
            switch quadruple.op {
            
            // Addition +
            case .Sum :
                add(left: quadruple.operandLeft!, right: quadruple.operandRight!, temp : quadruple.temp!)
            // Subtraction -
            case .Sub :
                sub(left: quadruple.operandLeft!, right: quadruple.operandRight!, temp : quadruple.temp!)
            // Multiplication *
            case .Mult:
                multiply(left: quadruple.operandLeft!, right: quadruple.operandRight!, temp : quadruple.temp!)
            // Division /
            case .Div:
                divide(left: quadruple.operandLeft!, right: quadruple.operandRight!, temp : quadruple.temp!)
            // Assign =
            case .Assign:
                assign(left : quadruple.operandLeft!, temp : quadruple.temp!)
            // Equal ==
            case .Equal:
                equal(left: quadruple.operandLeft!, right: quadruple.operandRight!, temp : quadruple.temp!)
            // Not equal !=
            case .NotEqual:
                notEqual(left: quadruple.operandLeft!, right: quadruple.operandRight!, temp : quadruple.temp!)
            // Less than <
            case .LessThan:
                lessThan(left: quadruple.operandLeft!, right: quadruple.operandRight!, temp : quadruple.temp!)
            // Greater than >
            case .GreaterThan:
                greatThan(left: quadruple.operandLeft!, right: quadruple.operandRight!, temp : quadruple.temp!)
            // And &&
            case .And:
                andOperator(left: quadruple.operandLeft!, right: quadruple.operandRight!, temp : quadruple.temp!)
            // Or ||
            case .Or:
                orOperator(left: quadruple.operandLeft!, right: quadruple.operandRight!, temp : quadruple.temp!)
            // Go to
            case .GoTo :
               quadCount = quadruple.temp! - 1
            // Go to if true
            case .GoToTrue :
                if (!(getValue(from: quadruple.operandLeft!).0 as! Bool)){
                    quadCount = quadruple.temp! - 1
                }
            // Go to if false
            case .GoToFalse:
                if (!(getValue(from: quadruple.operandLeft!).0 as! Bool)){
                    quadCount = quadruple.temp! - 1
                }
            // ERA size
            case .ERA :
                era(left: quadruple.operandLeft!, temp : quadruple.temp!)
            // Go to subrutine (go to function)
            case .GoSub:
                goSub(left : quadruple.operandLeft!, temp : quadruple.temp!)
            // Set parameter
            case .Param:
                param(left: quadruple.operandLeft!, temp : quadruple.temp!)
            // End procedure (end function)
            case .EndProc:
                endFunc()
            // Print
            case .Print:
                printOp(left: quadruple.operandLeft!)
            // Verify
            case .Verify:
                verify(left: quadruple.operandLeft!, right: quadruple.operandRight!, temp : quadruple.temp!)
            // Ret furn value of function
            case .Return:
                returnOp(left: quadruple.operandLeft!)
            // End main?
            case .End:
                end() //for main(?), may not be necessay
            }
            
        }
        
    }
    
    // MARK : Aritmetic Operation
    
    /**
     function to do the addition and save the result in the corresponding address
     **/
   
    func add(left:Address, right:Address, temp:Address){
        
        // more code*
        let leftVal = getValue(from:left)
        let rightVal = getValue(from:right)
        
        if leftVal.1 == .Int && rightVal.1 == .Int {
            let numL = Float(leftVal.0 as! Int)
            let numR = Float(rightVal.0 as! Int)
            
            setValue(numL + numR, in: temp)
            return
        } else if leftVal.1 == .Int && rightVal.1 == .Float {
            let numL = Float(leftVal.0 as! Int)
            let numR = rightVal.0 as! Float
            
            setValue(numL + numR, in: temp)
            return
        } else if leftVal.1 == .Float && rightVal.1 == .Int {
            let numL = leftVal.0 as! Float
            let numR = Float(rightVal.0 as! Int)
            
            setValue(numL + numR, in: temp)
            return
        }
        
        let numL = leftVal.0 as! Float
        let numR = rightVal.0 as! Float
        
        setValue(numL + numR, in: temp)
    }
    
    /**
     function to do the substraction and save the result in the corresponding address
     **/
    func sub(left:Address, right:Address, temp:Address){
        let leftVal = getValue(from:left)
        let rightVal = getValue(from:right)
        
        if leftVal.1 == .Int && rightVal.1 == .Int {
            let numL = Float(leftVal.0 as! Int)
            let numR = Float(rightVal.0 as! Int)
            
            setValue(numL - numR, in: temp)
            return
        } else if leftVal.1 == .Int && rightVal.1 == .Float {
            let numL = Float(leftVal.0 as! Int)
            let numR = rightVal.0 as! Float
            
            setValue(numL - numR, in: temp)
            return
        } else if leftVal.1 == .Float && rightVal.1 == .Int {
            let numL = leftVal.0 as! Float
            let numR = Float(rightVal.0 as! Int)
            
            setValue(numL - numR, in: temp)
            return
        }
        
        let numL = leftVal.0 as! Float
        let numR = rightVal.0 as! Float
        
        setValue(numL - numR, in: temp)
    }
    
    /**
     function to do the division and save the result in the corresponding address
     **/
    func divide(left:Address, right:Address, temp:Address){
        let leftVal = getValue(from:left)
        let rightVal = getValue(from:right)
        
        if leftVal.1 == .Int && rightVal.1 == .Int {
            let numL = Float(leftVal.0 as! Int)
            let numR = Float(rightVal.0 as! Int)
            
            setValue(numL / numR, in: temp)
            return
        } else if leftVal.1 == .Int && rightVal.1 == .Float {
            let numL = Float(leftVal.0 as! Int)
            let numR = rightVal.0 as! Float
            
            setValue(numL / numR, in: temp)
            return
        } else if leftVal.1 == .Float && rightVal.1 == .Int {
            let numL = leftVal.0 as! Float
            let numR = Float(rightVal.0 as! Int)
            
            setValue(numL / numR, in: temp)
            return
        }
        
        let numL = leftVal.0 as! Float
        let numR = rightVal.0 as! Float
        
        setValue(numL / numR, in: temp)
        
    }
    
    /**
     function to do the multiplication and save the result in the corresponding address
     **/
    func multiply(left:Address, right:Address, temp:Address){
        let leftVal = getValue(from:left)
        let rightVal = getValue(from:right)
        
        if leftVal.1 == .Int && rightVal.1 == .Int {
            let numL = Float(leftVal.0 as! Int)
            let numR = Float(rightVal.0 as! Int)
            
            setValue(numL * numR, in: temp)
            return
        } else if leftVal.1 == .Int && rightVal.1 == .Float {
            let numL = Float(leftVal.0 as! Int)
            let numR = rightVal.0 as! Float
            
            setValue(numL * numR, in: temp)
            return
        } else if leftVal.1 == .Float && rightVal.1 == .Int {
            let numL = leftVal.0 as! Float
            let numR = Float(rightVal.0 as! Int)
            
            setValue(numL * numR, in: temp)
            return
        }
        
        let numL = leftVal.0 as! Float
        let numR = rightVal.0 as! Float
        
        setValue(numL * numR, in: temp)
    }
    
    /**
     function to assign and save the result in the corresponding address
     **/
    func assign(left:Address, temp:Address){
        //code
    }
    
    // MARK : Logic Operation
    
    /**
     function to evaluate lesser than and save the result in the corresponding address
     **/
    func lessThan(left:Address, right:Address, temp:Address){
        let leftVal = getValue(from:left)
        let rightVal = getValue(from:right)
        
        if leftVal.1 == .Int && rightVal.1 == .Int {
            let numL = Float(leftVal.0 as! Int)
            let numR = Float(rightVal.0 as! Int)
            
            setValue(numL < numR, in: temp)
            return
        } else if leftVal.1 == .Int && rightVal.1 == .Float {
            let numL = Float(leftVal.0 as! Int)
            let numR = rightVal.0 as! Float
            
            setValue(numL < numR, in: temp)
            return
        } else if leftVal.1 == .Float && rightVal.1 == .Int {
            let numL = leftVal.0 as! Float
            let numR = Float(rightVal.0 as! Int)
            
            setValue(numL < numR, in: temp)
            return
        }
        
        let numL = leftVal.0 as! Float
        let numR = rightVal.0 as! Float
        
        setValue(numL < numR, in: temp)
    }
    
    /**
     function to evaluate greater than and save the result in the corresponding address
     **/
    func greatThan(left:Address, right:Address, temp:Address){
        //cod
    }
    
    /**
     function to evaluate not equal than and save the result in the corresponding address
     **/
    func notEqual(left:Address, right:Address, temp:Address){
        let leftVal = getValue(from:left)
        let rightVal = getValue(from:right)
        
        if leftVal.1 == .Int && rightVal.1 == .Int {
            let numL = leftVal.0 as! Int
            let numR = rightVal.0 as! Int
            
            setValue(numL == numR, in: temp)
            return
        } else if leftVal.1 == .Float && rightVal.1 != .Float {
            let numL = leftVal.0 as! Float
            let numR = rightVal.0 as! Float
            
            setValue(numL == numR, in: temp)
            return
        } else if leftVal.1 == .String && rightVal.1 != .String {
            let numL = leftVal.0 as! String
            let numR = rightVal.0 as! String
            
            setValue(numL == numR, in: temp)
            return
        } else if leftVal.1 == .Bool && rightVal.1 != .Bool {
            let numL = leftVal.0 as! Bool
            let numR = rightVal.0 as! Bool
            
            setValue(numL != numR, in: temp)
            return
        }
    }
    
    /**
     function to evaluate "and" operator than and save the result in the corresponding address
     **/
    func andOperator(left:Address, right:Address, temp:Address){
        //code
        let leftVal = getValue(from: left) //getValue in memory address
        let rightVal = getValue(from: right) //getValue in memory address
        
        let numL = leftVal.0 as! Bool
        let numR = rightVal.0 as! Bool
        
        setValue(numL && numR, in: temp) //from Virtual memory
    }
    
    /**
     function to evaluate "or" operator and save the result in the corresponding address
     **/
    func orOperator(left:Address, right:Address, temp:Address){
        let leftVal = getValue(from: left)
        let rightVal = getValue(from: right) //getValue in memory address
        
        let numL = leftVal.0 as! Bool
        let numR = rightVal.0 as! Bool
        
        setValue(numL || numR, in: temp) //from Virtual memory
    }
    
    /**
     function to evaluate "==" operator and save the result in the corresponding address
     **/
    func equal(left:Address, right:Address, temp:Address){
        let leftVal = getValue(from: left)
        let rightVal = getValue(from: right)
        
        if leftVal.1 == .Int && rightVal.1 == .Int {
            let numL = leftVal.0 as! Int
            let numR = rightVal.0 as! Int
            
            setValue(numL == numR, in: temp)
            return
        } else if leftVal.1 == .Float && rightVal.1 == .Float {
            let numL = leftVal.0 as! Float
            let numR = rightVal.0 as! Float
            
            setValue(numL == numR, in: temp)
            return
        } else if leftVal.1 == .String && rightVal.1 == .String {
            let numL = leftVal.0 as! String
            let numR = rightVal.0 as! String
            
            setValue(numL == numR, in: temp)
            return
        } else if leftVal.1 == .Bool && rightVal.1 == .Bool {
            let numL = leftVal.0 as! Bool
            let numR = rightVal.0 as! Bool
            
            setValue(numL == numR, in: temp)
            return
        }
    }
    
    
    // MARK : Instructions
    // MARK : GOTO
    /**
     function to create GoToF and save the result in the corresponding address
     **/
    func goToF(left:Address, temp:Address){
       
    }
    
    /**
     function to create GoToT and save the result in the corresponding address
     **/
    
    
    /**
     function to create GoTo and save the result in the corresponding address
     **/
 
    
    /**
     function to create ERA and save the result in the corresponding address
     **/
    func era(left:Address, temp:Address){
        //code
    }
    
    /**
     function to create GoSub and save the result in the corresponding address
     **/
    func goSub(left:Address, temp:Address){
        //code
    }
    
    /**
     function to create PARAM and save the result in the corresponding address
     **/
    func param(left:Address, temp:Address){
        //get value
        let valueT = getValue(from: left)
        
        // Set Value in top memory of stack
        if valueT.1 == .Int {
            let value = valueT.0 as! Int
            setParamValue(value, in: address)
        } else if valueT.1 == .Float {
            let value = valueT.0 as! Float
            setParamValue(value, in: address)
        } else if valueT.1 == .String {
            let value = valueT.0 as! String
            setParamValue(value, in: address)
        } else if valueT.1 == .Bool {
            let value = valueT.0 as! Bool
            setParamValue(value, in: address)
        } else {
            print("ERROR - The data type is incorrect")
        }
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
    func verify(left:Address, right:Address, temp:Address){
        /**if quadruple.leftOperand! < getValue(from:quadruple.resultVar!).0 as! Int || quadruple.operandLeft! < 0 {
            ParseTestFailBlock("Index in array is out of bounds");
            quadrupleNumber = quadruples.count
            EndBlock();
        }**/
    }
    
    /**
     function to create RETURN and save the result in the corresponding address
     **/
    func returnOp(left:Address){
        //code
    }
    
    /**
     function to create RETURN and save the result in the corresponding address
     **/
    func printOp(left:Address){
        //code
    }

}

