//
//  VirtualMachine.swift
//  Mapache
//
//  Created by Jorge Anastas on 11/8/18.
//  Copyright © 2018 Luis Salazar. All rights reserved.
//

import Foundation

// MARK: - Functions for Virtual Machine
extension Wizard {
    func end() {
        if errors.isEmpty {
            editorVC.showResults(results: outputs, error: false)
        } else {
            editorVC.showResults(results: errors, error: true)
        }
    }
    
    func addOutput() {
        
    }
    
    func addError() {
        
    }
    
}

// MARK: - Virtual Machine
extension Wizard {
    
    func quads(_ quadruples: [Quadruple]) { //the creation of quadruples is pending
        var quadCount = 0
        
        while quadCount < quadruples.count { //check each quadruple
            let quadruple = quadruples[quadCount]
            switch quadruple.op {
            
            // Addition +
            case .Sum :
                add(leftAddress: quadruple.operandLeft!, rightAddress: quadruple.operandRight!, tempAddress: quadruple.temp!)
            // Subtraction -
            case .Sub :
                sub(leftAddress: quadruple.operandLeft!, rightAddress: quadruple.operandRight!, tempAddress: quadruple.temp!)
            // Multiplication *
            case .Mult:
                multiply(leftAddress: quadruple.operandLeft!, rightAddress: quadruple.operandRight!, tempAddress: quadruple.temp!)
            // Division /
            case .Div:
                divide(leftAddress: quadruple.operandLeft!, rightAddress: quadruple.operandRight!, tempAddress: quadruple.temp!)
            // Assign =
            case .Assign:
               assign(leftAddress: quadruple.operandLeft!, tempAddress: quadruple.temp!)
            // Equal ==
            case .Equal:
                equal(leftAddress: quadruple.operandLeft!, rightAddress: quadruple.operandRight!, tempAddress: quadruple.temp!)
            // Not equal !=
            case .NotEqual:
                notEqual(leftAddress: quadruple.operandLeft!, rightAddress: quadruple.operandRight!, tempAddress: quadruple.temp!)
            // Less than <
            case .LessThan:
                lessThan(leftAddress: quadruple.operandLeft!, rightAddress: quadruple.operandRight!, tempAddress: quadruple.temp!)
            // Greater than >
            case .GreaterThan:
                greatThan(leftAddress: quadruple.operandLeft!, rightAddress: quadruple.operandRight!, tempAddress: quadruple.temp!)
            // And &&
            case .And:
                andOperator(leftAddress: quadruple.operandLeft!, rightAddress: quadruple.operandRight!, tempAddress: quadruple.temp!)
            // Or ||
            case .Or:
                orOperator(leftAddress: quadruple.operandLeft!, rightAddress: quadruple.operandRight!, tempAddress: quadruple.temp!)
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
                era(leftAddress: quadruple.operandLeft!, tempAddress: quadruple.temp!)
            // Go to subrutine (go to function)
            case .GoSub:
                goSub(leftAddress : quadruple.operandLeft!, tempAddress: quadruple.temp!)
            // Set parameter
            case .Param:
                param(leftAddress: quadruple.operandLeft!, tempAddress: quadruple.temp!)
            // End procedure (end function)
            case .EndProc:
                
                break
                
            // Print
            case .Print:
                printOp(leftAddress: quadruple.operandLeft!)
            // Verify
            case .Verify:
                if quadruple.operandLeft! < getValue(from:quadruple.temp!).0 as! Int || quadruple.operandLeft! < 0 {
                    #warning ("TODO: Error(Index in array is out of bounds)")
                    quadCount = quadruples.count
                    end()
                }
                break
            // Ret furn value of function
            case .Return:
                returnOp(leftAddress: quadruple.operandLeft!, tempAddress: quadruple.temp!)
            // End main?
            case .End:
                end()
            }
            quadCount += 1
        }
        
    }
    
    // MARK : Aritmetic Operation
    
    /**
     function to do the addition and save the result in the corresponding address
     **/
   
    func add(leftAddress:Address, rightAddress:Address, tempAddress:Address){
        
        // more code*
        
        let (leftVal, leftType) = getValue(from: leftAddress)
        let (rightVal, rightType) = getValue(from: rightAddress)
        
        if leftType == .Int && rightType == .Int {
            let numL = Float(leftVal as! Int)
            let numR = Float(rightVal as! Int)
            
            save(numL + numR, in: tempAddress)
            return
        } else if leftType == .Int && rightType == .Float {
            let numL = Float(leftVal as! Int)
            let numR = rightVal as! Float
            
            save(numL + numR, in: tempAddress)
            return
        } else if leftType == .Float && rightType == .Int {
            let numL = leftVal as! Float
            let numR = Float(rightVal as! Int)
            
            save(numL + numR, in: tempAddress)
            return
        }
        
        let numL = leftVal as! Float
        let numR = rightVal as! Float
        
        save(numL + numR, in: tempAddress)
    }
    
    /**
     function to do the substraction and save the result in the corresponding address
     **/
    func sub(leftAddress:Address, rightAddress:Address, tempAddress:Address){
        let (leftVal, leftType) = getValue(from:leftAddress)
        let (rightVal, rightType) = getValue(from:rightAddress)
        
        if leftType == .Int && rightType == .Int {
            let numL = Float(leftVal as! Int)
            let numR = Float(rightVal as! Int)
            
            save(numL - numR, in: tempAddress)
            return
        } else if leftType == .Int && rightType == .Float {
            let numL = Float(leftVal as! Int)
            let numR = rightVal as! Float
            
            save(numL - numR, in: tempAddress)
            return
        } else if leftType == .Float && rightType == .Int {
            let numL = leftVal as! Float
            let numR = Float(rightVal as! Int)
            
            save(numL - numR, in: tempAddress)
            return
        }
        
        let numL = leftVal as! Float
        let numR = rightVal as! Float
        
        save(numL - numR, in: tempAddress)
    }
    
    /**
     function to do the division and save the result in the corresponding address
     **/
    func divide(leftAddress:Address, rightAddress:Address, tempAddress:Address){
        let (leftVal, leftType) = getValue(from:leftAddress)
        let (rightVal, rightType) = getValue(from:rightAddress)
        
        if leftType == .Int && rightType == .Int {
            let numL = Float(leftVal as! Int)
            let numR = Float(rightVal as! Int)
            
            save(numL / numR, in: tempAddress)
            return
        } else if leftType == .Int && rightType == .Float {
            let numL = Float(leftVal as! Int)
            let numR = rightVal as! Float
            
            save(numL / numR, in: tempAddress)
            return
        } else if leftType == .Float && rightType == .Int {
            let numL = leftVal as! Float
            let numR = Float(rightVal as! Int)
            
            save(numL / numR, in: tempAddress)
            return
        }
        
        let numL = leftVal as! Float
        let numR = rightVal as! Float
        
        save(numL / numR, in: tempAddress)
        
    }
    
    /**
     function to do the multiplication and save the result in the corresponding address
     **/
    func multiply(leftAddress:Address, rightAddress:Address, tempAddress:Address){
        let (leftVal, leftType) = getValue(from:leftAddress)
        let (rightVal, rightType) = getValue(from:rightAddress)
        
        if leftType == .Int && rightType == .Int {
            let numL = Float(leftVal as! Int)
            let numR = Float(rightVal as! Int)
            
            save(numL * numR, in: tempAddress)
            return
        } else if leftType == .Int && rightType == .Float {
            let numL = Float(leftVal as! Int)
            let numR = rightVal as! Float
            
            save(numL * numR, in: tempAddress)
            return
        } else if leftType == .Float && rightType == .Int {
            let numL = leftVal as! Float
            let numR = Float(rightVal as! Int)
            
            save(numL * numR, in: tempAddress)
            return
        }
        
        let numL = leftVal as! Float
        let numR = rightVal as! Float
        
        save(numL * numR, in: tempAddress)
    }
    

/**
 function to assign value
 **/
    
    func assign(leftAddress:Address, tempAddress:Address){
        let (leftVal, _) = getValue(from: leftAddress)
        
        save(leftVal, in: tempAddress)
    }
    
    // MARK : Logic Operation
    
    /**
     function to evaluate lesser than and save the result in the corresponding address
     **/
    func lessThan(leftAddress:Address, rightAddress:Address, tempAddress:Address){
        let (leftVal, leftType) = getValue(from:leftAddress)
        let (rightVal, rightType) = getValue(from:rightAddress)
        
        if leftType == .Int && rightType == .Int {
            let numL = Float(leftVal as! Int)
            let numR = Float(rightVal as! Int)
            
            save(numL < numR, in: tempAddress)
            return
        } else if leftType == .Int && rightType == .Float {
            let numL = Float(leftVal as! Int)
            let numR = rightVal as! Float
            
            save(numL < numR, in: tempAddress)
            return
        } else if leftType == .Float && rightType == .Int {
            let numL = leftVal as! Float
            let numR = Float(rightVal as! Int)
            
            save(numL < numR, in: tempAddress)
            return
        }
        
        let numL = leftVal as! Float
        let numR = rightVal as! Float
        
        save(numL < numR, in: tempAddress)
    }
    
    /**
     function to evaluate greater than and save the result in the corresponding address
     **/
    func greatThan(leftAddress:Address, rightAddress:Address, tempAddress:Address){
        var (leftVal, leftType) = getValue(from:leftAddress)
        var (rightVal, rightType) = getValue(from:rightAddress)
        
        if leftAddress < 0 || rightAddress < 0 {
            
            if leftAddress < 0 {
                leftVal = getValue(from :(getValue(from: -1*leftAddress)).0 as! Int)
            }
            
            if rightAddress < 0 {
                rightVal = getValue(from: (getValue(from: -1*leftAddress)).0 as! Int)
            }
            
        }else{
            leftVal = getValue(from: leftAddress)
            rightVal = getValue(from: rightAddress)
        }
        
        if leftType == .Int && rightType == .Int {
            let numL = leftVal as! Int
            let numR = rightVal as! Int
            
            save(numL == numR, in: tempAddress)
            return
        } else if leftType == .Float && rightType != .Float {
            let numL = leftVal as! Float
            let numR = rightVal as! Float
            
            save(numL == numR, in: tempAddress)
            return
        } else if leftType == .Int && rightType != .Float {
            let numL = leftVal as! Float
            let numR = rightVal as! Float
            
            save(numL == numR, in: tempAddress)
            return
        } else if leftType == .Float && rightType != .Int {
            let numL = leftVal as! Float
            let numR = rightVal as! Float
            
            save(numL < numR, in: tempAddress)
            return
        }
    }
    
    /**
     function to evaluate not equal than and save the result in the corresponding address
     **/
    func notEqual(leftAddress:Address, rightAddress:Address, tempAddress:Address){
        let (leftVal, leftType) = getValue(from:leftAddress)
        let (rightVal, rightType) = getValue(from:rightAddress)
        
        if leftType == .Int && rightType == .Int {
            let numL = leftVal as! Int
            let numR = rightVal as! Int
            
            save(numL == numR, in: tempAddress)
            return
        } else if leftType == .Float && rightType != .Float {
            let numL = leftVal as! Float
            let numR = rightVal as! Float
            
            save(numL == numR, in: tempAddress)
            return
        } else if leftType == .String && rightType != .String {
            let numL = leftVal as! String
            let numR = rightVal as! String
            
            save(numL == numR, in: tempAddress)
            return
        } else if leftType == .Bool && rightType != .Bool {
            let numL = leftVal as! Bool
            let numR = rightVal as! Bool
            
            save(numL != numR, in: tempAddress)
            return
        }
    }
    
    /**
     function to evaluate "and" operator than and save the result in the corresponding address
     **/
    func andOperator(leftAddress:Address, rightAddress:Address, tempAddress:Address){
        //code
        let (leftVal, leftType) = getValue(from: leftAddress) //getValue in memory address
        let (rightVal, rightType) = getValue(from: rightAddress) //getValue in memory address
        
        let numL = leftVal as! Bool
        let numR = rightVal as! Bool
        
        save(numL && numR, in: tempAddress) //from Virtual memory
    }
    
    /**
     function to evaluate "or" operator and save the result in the corresponding address
     **/
    func orOperator(leftAddress:Address, rightAddress:Address, tempAddress:Address){
        let (leftVal, leftType) = getValue(from: leftAddress)
        let (rightVal, rightType) = getValue(from: rightAddress) //getValue in memory address
        
        let numL = leftVal as! Bool
        let numR = rightVal as! Bool
        
        save(numL || numR, in: tempAddress) //from Virtual memory
    }
    
    /**
     function to evaluate "==" operator and save the result in the corresponding address
     **/
    func equal(leftAddress:Address, rightAddress:Address, tempAddress:Address){
        let (leftVal, leftType) = getValue(from: leftAddress)
        let (rightVal, rightType) = getValue(from: rightAddress)
        
        if leftType == .Int && rightType == .Int {
            let numL = leftVal as! Int
            let numR = rightVal as! Int
            
            save(numL == numR, in: tempAddress)
        } else if leftType == .Float && rightType == .Float {
            let numL = leftVal as! Float
            let numR = rightVal as! Float
            
            save(numL == numR, in: tempAddress)
        } else if leftType == .String && rightType == .String {
            let numL = leftVal as! String
            let numR = rightVal as! String
            
            save(numL == numR, in: tempAddress)
        } else if leftType == .Bool && rightType == .Bool {
            let numL = leftVal as! Bool
            let numR = rightVal as! Bool
            
            save(numL == numR, in: tempAddress)
        }
    }
    
    
    // MARK : Instructions
    
    /**
     function to create ERA and save the result in the corresponding address
     **/
    func era(leftAddress:Address, tempAddress:Address){
        //TO DO: era func
    }
    
    /**
     function to create GoSub and save the result in the corresponding address
     **/
    func goSub(leftAddress:Address, tempAddress:Address){
        //TO DO: code
    }
    
    /**
     function to create PARAM and save the result in the corresponding address
     **/
    func param(leftAddress:Address, tempAddress:Address){
        //get value
        let (leftVal, leftType) = getValue(from: leftAddress)
        
        // Set Value in top memory of stack
        switch leftType {
        case .Int:
            let value = leftVal as! Int
            saveParam(value, in: tempAddress)
        case .Float:
            let value = leftVal as! Float
            saveParam(value, in: tempAddress)
        case .String:
            let value = leftVal as! String
            saveParam(value, in: tempAddress)
        case .Bool:
            let value = leftVal as! Bool
            saveParam(value, in: tempAddress)
        default:
            print("ERROR - The data type is incorrect")
        }
    }
    
    
    /**
     function to create RETURN and save the result in the corresponding address
     **/
    func returnOp(leftAddress:Address, tempAddress:Address){
        // Return addresss value
        
        
        // Memory that called current function
        // To Do: memoryStack.last?.setValue(in: Address, tempAddress: value.0)
    }
    
    /**
     function to create RETURN and save the result in the corresponding address
     **/
    func printOp(leftAddress:Address){
        let (outputVal, outputType) = getValue(from: leftAddress)
        
        if outputType == .Int {
            let value = String(outputVal as! Int) + "\n"
            // To Do: ParseTestSuccessBlock(value)
        } else if outputType == .Float {
            let value = String(outputVal as! Float) + "\n"
            // To Do: ParseTestSuccessBlock(value)
        } else if outputType == .Bool {
            let value = String(outputVal as! Bool) + "\n"
            // To Do:ParseTestSuccessBlock(value)
        } else {
            let value = outputVal as! String + "\n"
            // To Do:ParseTestSuccessBlock(value)
        }
    }

}
