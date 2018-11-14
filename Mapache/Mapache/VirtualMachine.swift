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
                -1
                //To Do:  setValue(in:quadruple.temp!, temp: getValue(from: quadruple.operandLeft!).0)
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
                -1
                //ToDo: EndBlock();
            // Print
            case .Print:
                printOp(left: quadruple.operandLeft!)
            // Verify
            case .Verify:
                if quadruple.operandLeft! < getValue(from:quadruple.temp!).0 as! Int || quadruple.operandLeft! < 0 {
                    //ToDo: Error("Index in array is out of bounds");
                    quadCount = quadruples.count
                    //ToDo: EndBlock();
                }
                break
            // Ret furn value of function
            case .Return:
                returnOp(left: quadruple.operandLeft!, temp : quadruple.temp!)
            // End main?
            case .End:
                -1
                //ToDo: EndBlock();  //for main(?), may not be necessay
            }
            quadCount += 1
        }
        
    }
    
    // MARK : Aritmetic Operation
    
    /**
     function to do the addition and save the result in the corresponding address
     **/
   
    func add(left:Address, right:Address, temp:Address){
        
        // more code*
        
        let (leftVal, leftType) = getValue(from: left)
        let (rightVal, rightType) = getValue(from: right)
        
        if leftType == .Int && rightType == .Int {
            let numL = Float(leftVal as! Int)
            let numR = Float(rightVal as! Int)
            
            setValue(numL + numR, in: temp)
            return
        } else if leftType == .Int && rightType == .Float {
            let numL = Float(leftVal as! Int)
            let numR = rightVal as! Float
            
            setValue(numL + numR, in: temp)
            return
        } else if leftType == .Float && rightType == .Int {
            let numL = leftVal as! Float
            let numR = Float(rightVal as! Int)
            
            setValue(numL + numR, in: temp)
            return
        }
        
        let numL = leftVal as! Float
        let numR = rightVal as! Float
        
        setValue(numL + numR, in: temp)
    }
    
    /**
     function to do the substraction and save the result in the corresponding address
     **/
    func sub(left:Address, right:Address, temp:Address){
        let (leftVal, leftType) = getValue(from:left)
        let (rightVal, rightType) = getValue(from:right)
        
        if leftType == .Int && rightType == .Int {
            let numL = Float(leftVal as! Int)
            let numR = Float(rightVal as! Int)
            
            setValue(numL - numR, in: temp)
            return
        } else if leftType == .Int && rightType == .Float {
            let numL = Float(leftVal as! Int)
            let numR = rightVal as! Float
            
            setValue(numL - numR, in: temp)
            return
        } else if leftType == .Float && rightType == .Int {
            let numL = leftVal as! Float
            let numR = Float(rightVal as! Int)
            
            setValue(numL - numR, in: temp)
            return
        }
        
        let numL = leftVal as! Float
        let numR = rightVal as! Float
        
        setValue(numL - numR, in: temp)
    }
    
    /**
     function to do the division and save the result in the corresponding address
     **/
    func divide(left:Address, right:Address, temp:Address){
        let (leftVal, leftType) = getValue(from:left)
        let (rightVal, rightType) = getValue(from:right)
        
        if leftType == .Int && rightType == .Int {
            let numL = Float(leftVal as! Int)
            let numR = Float(rightVal as! Int)
            
            setValue(numL / numR, in: temp)
            return
        } else if leftType == .Int && rightType == .Float {
            let numL = Float(leftVal as! Int)
            let numR = rightVal as! Float
            
            setValue(numL / numR, in: temp)
            return
        } else if leftType == .Float && rightType == .Int {
            let numL = leftVal as! Float
            let numR = Float(rightVal as! Int)
            
            setValue(numL / numR, in: temp)
            return
        }
        
        let numL = leftVal as! Float
        let numR = rightVal as! Float
        
        setValue(numL / numR, in: temp)
        
    }
    
    /**
     function to do the multiplication and save the result in the corresponding address
     **/
    func multiply(left:Address, right:Address, temp:Address){
        let (leftVal, leftType) = getValue(from:left)
        let (rightVal, rightType) = getValue(from:right)
        
        if leftType == .Int && rightType == .Int {
            let numL = Float(leftVal as! Int)
            let numR = Float(rightVal as! Int)
            
            setValue(numL * numR, in: temp)
            return
        } else if leftType == .Int && rightType == .Float {
            let numL = Float(leftVal as! Int)
            let numR = rightVal as! Float
            
            setValue(numL * numR, in: temp)
            return
        } else if leftType == .Float && rightType == .Int {
            let numL = leftVal as! Float
            let numR = Float(rightVal as! Int)
            
            setValue(numL * numR, in: temp)
            return
        }
        
        let numL = leftVal as! Float
        let numR = rightVal as! Float
        
        setValue(numL * numR, in: temp)
    }
    


    
    // MARK : Logic Operation
    
    /**
     function to evaluate lesser than and save the result in the corresponding address
     **/
    func lessThan(left:Address, right:Address, temp:Address){
        let (leftVal, leftType) = getValue(from:left)
        let (rightVal, rightType) = getValue(from:right)
        
        if leftType == .Int && rightType == .Int {
            let numL = Float(leftVal as! Int)
            let numR = Float(rightVal as! Int)
            
            setValue(numL < numR, in: temp)
            return
        } else if leftType == .Int && rightType == .Float {
            let numL = Float(leftVal as! Int)
            let numR = rightVal as! Float
            
            setValue(numL < numR, in: temp)
            return
        } else if leftType == .Float && rightType == .Int {
            let numL = leftVal as! Float
            let numR = Float(rightVal as! Int)
            
            setValue(numL < numR, in: temp)
            return
        }
        
        let numL = leftVal as! Float
        let numR = rightVal as! Float
        
        setValue(numL < numR, in: temp)
    }
    
    /**
     function to evaluate greater than and save the result in the corresponding address
     **/
    func greatThan(left:Address, right:Address, temp:Address){
        var (leftVal, leftType) = getValue(from:left)
        var (rightVal, rightType) = getValue(from:right)
        
        if left < 0 || right < 0 {
            
            if left < 0 {
                leftVal = getValue(from :(getValue(from: -1*left)).0 as! Int)
            }
            
            if right < 0 {
                rightVal = getValue(from: (getValue(from: -1*left)).0 as! Int)
            }
            
        }else{
            leftVal = getValue(from: left)
            rightVal = getValue(from: right)
        }
        
        if leftType == .Int && rightType == .Int {
            let numL = leftVal as! Int
            let numR = rightVal as! Int
            
            setValue(numL == numR, in: temp)
            return
        } else if leftType == .Float && rightType != .Float {
            let numL = leftVal as! Float
            let numR = rightVal as! Float
            
            setValue(numL == numR, in: temp)
            return
        } else if leftType == .Int && rightType != .Float {
            let numL = leftVal as! Float
            let numR = rightVal as! Float
            
            setValue(numL == numR, in: temp)
            return
        } else if leftType == .Float && rightType != .Int {
            let numL = leftVal as! Float
            let numR = rightVal as! Float
            
            setValue(numL < numR, in: temp)
            return
        }
    }
    
    /**
     function to evaluate not equal than and save the result in the corresponding address
     **/
    func notEqual(left:Address, right:Address, temp:Address){
        let (leftVal, leftType) = getValue(from:left)
        let (rightVal, rightType) = getValue(from:right)
        
        if leftType == .Int && rightType == .Int {
            let numL = leftVal as! Int
            let numR = rightVal as! Int
            
            setValue(numL == numR, in: temp)
            return
        } else if leftType == .Float && rightType != .Float {
            let numL = leftVal as! Float
            let numR = rightVal as! Float
            
            setValue(numL == numR, in: temp)
            return
        } else if leftType == .String && rightType != .String {
            let numL = leftVal as! String
            let numR = rightVal as! String
            
            setValue(numL == numR, in: temp)
            return
        } else if leftType == .Bool && rightType != .Bool {
            let numL = leftVal as! Bool
            let numR = rightVal as! Bool
            
            setValue(numL != numR, in: temp)
            return
        }
    }
    
    /**
     function to evaluate "and" operator than and save the result in the corresponding address
     **/
    func andOperator(left:Address, right:Address, temp:Address){
        //code
        let (leftVal, leftType) = getValue(from: left) //getValue in memory address
        let (rightVal, rightType) = getValue(from: right) //getValue in memory address
        
        let numL = leftVal as! Bool
        let numR = rightVal as! Bool
        
        setValue(numL && numR, in: temp) //from Virtual memory
    }
    
    /**
     function to evaluate "or" operator and save the result in the corresponding address
     **/
    func orOperator(left:Address, right:Address, temp:Address){
        let (leftVal, leftType) = getValue(from: left)
        let (rightVal, rightType) = getValue(from: right) //getValue in memory address
        
        let numL = leftVal as! Bool
        let numR = rightVal as! Bool
        
        setValue(numL || numR, in: temp) //from Virtual memory
    }
    
    /**
     function to evaluate "==" operator and save the result in the corresponding address
     **/
    func equal(left:Address, right:Address, temp:Address){
        let (leftVal, leftType) = getValue(from: left)
        let (rightVal, rightType) = getValue(from: right)
        
        if leftType == .Int && rightType == .Int {
            let numL = leftVal as! Int
            let numR = rightVal as! Int
            
            setValue(numL == numR, in: temp)
            return
        } else if leftType == .Float && rightType == .Float {
            let numL = leftVal as! Float
            let numR = rightVal as! Float
            
            setValue(numL == numR, in: temp)
            return
        } else if leftType == .String && rightType == .String {
            let numL = leftVal as! String
            let numR = rightVal as! String
            
            setValue(numL == numR, in: temp)
            return
        } else if leftType == .Bool && rightType == .Bool {
            let numL = leftVal as! Bool
            let numR = rightVal as! Bool
            
            setValue(numL == numR, in: temp)
            return
        }
    }
    
    
    // MARK : Instructions
    
    /**
     function to create ERA and save the result in the corresponding address
     **/
    func era(left:Address, temp:Address){
        //TO DO: era func
    }
    
    /**
     function to create GoSub and save the result in the corresponding address
     **/
    func goSub(left:Address, temp:Address){
        //TO DO: code
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
            //To DO: setParamValue(value, in: Address)
        } else if valueT.1 == .Float {
            let value = valueT.0 as! Float
            //To DO:setParamValue(value, in: Address)
        } else if valueT.1 == .String {
            let value = valueT.0 as! String
            //To DO:setParamValue(value, in: Address)
        } else if valueT.1 == .Bool {
            let value = valueT.0 as! Bool
           //To DO: setParamValue(value, in: Address)
        } else {
            print("ERROR - The data type is incorrect")
        }
    }
    
    
    /**
     function to create RETURN and save the result in the corresponding address
     **/
    func returnOp(left:Address, temp:Address){
        // Return addresss value
        let value = getValue(from: temp)
        
        // Memory that called current function
        // To Do: memoryStack.last?.setValue(in: Address, temp: value.0)
    }
    
    /**
     function to create RETURN and save the result in the corresponding address
     **/
    func printOp(left:Address){
        let (outputVal, output) = getValue(from: left)
        
        if output == .Int {
            let value = String(output as! Int) + "\n"
            // To Do: ParseTestSuccessBlock(value)
        } else if output == .Float {
            let value = String(output as! Float) + "\n"
            // To Do: ParseTestSuccessBlock(value)
        } else if output == .Bool {
            let value = String(output as! Bool) + "\n"
            // To Do:ParseTestSuccessBlock(value)
        } else {
            let value = output as! String + "\n"
            // To Do:ParseTestSuccessBlock(value)
        }
    }

}

