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
    
    func output(_ outpu: String) {
        
    }
    
    func error(_ error: String) {
        
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
               break
            // Go to if false
            case .GoToFalse:
                if let newQuadCount = goToFalse(leftAddress: quadruple.operandLeft!, tempAddress: quadruple.temp!) {
                    quadCount = newQuadCount
                }
             break
            // ERA size
            case .ERA :
                era(leftAddress: quadruple.operandLeft!, tempAddress: quadruple.temp!)
                #warning ("TODO: ERA func ")
            // Go to subrutine (go to function)
            case .GoSub:
                goSub(leftAddress : quadruple.operandLeft!, tempAddress: quadruple.temp!)
                  #warning ("TODO: GoSub func ")
            // Set parameter
            case .Param:
                param(leftAddress: quadruple.operandLeft!, tempAddress: quadruple.temp!)
            // End procedure (end function)
            case .EndProc:
                 #warning ("TODO: endproc func ")
            break
            // Print
            case .Print:
                printOp(leftAddress: quadruple.operandLeft!)
            // Verify
            case .Verify:
                if !verify(leftAddress: quadruple.operandLeft!, tempAddress: quadruple.temp!) {
                    quadCount = quadruples.count
                }
            break
            // Ret furn value of function
            case .Return:
                #warning ("TODO: returnOp func ")
                returnOp(leftAddress: quadruple.operandLeft!, tempAddress: quadruple.temp!)
            // End main?
            case .End:
                end()
                quadCount = quadruples.count
            break
            }
            quadCount += 1
        }
        
    }
    
    // MARK : Aritmetic Operation

    /**
     Description: function to do the addition and save the result in the corresponding address
     Parameters: leftAddress, Type: Address ; rightAddress , Type: Address ;  tempAddress, Type: Address
     Return value: N/A
     Error handling: N/A
     **/
   
    func add(leftAddress:Address, rightAddress:Address, tempAddress:Address){
        
        // more code*
        
        let (leftVal, leftType) = getValue(from: leftAddress)
        let (rightVal, rightType) = getValue(from: rightAddress)
        
        if leftType == .Int && rightType == .Int {
            let numL = Float(leftVal as! Int)
            let numR = Float(rightVal as! Int)
            
            save(numL + numR, in: tempAddress)
           
        } else if leftType == .Int && rightType == .Float {
            let numL = Float(leftVal as! Int)
            let numR = rightVal as! Float
            
            save(numL + numR, in: tempAddress)
           
        } else if leftType == .Float && rightType == .Int {
            let numL = leftVal as! Float
            let numR = Float(rightVal as! Int)
            
            save(numL + numR, in: tempAddress)
           
        }
        
        let numL = leftVal as! Float
        let numR = rightVal as! Float
        
        save(numL + numR, in: tempAddress)
    }
    

    /**
     Description: function to do the substraction and save the result in the corresponding address
     Parameters: leftAddress, Type: Address ; rightAddress , Type: Address ;  tempAddress, Type: Address
     Return value: N/A
     Error handling: N/A
     **/
    func sub(leftAddress:Address, rightAddress:Address, tempAddress:Address){
        let (leftVal, leftType) = getValue(from:leftAddress)
        let (rightVal, rightType) = getValue(from:rightAddress)
        
        if leftType == .Int && rightType == .Int {
            let numL = Float(leftVal as! Int)
            let numR = Float(rightVal as! Int)
            
            save(numL - numR, in: tempAddress)
           
        } else if leftType == .Int && rightType == .Float {
            let numL = Float(leftVal as! Int)
            let numR = rightVal as! Float
            
            save(numL - numR, in: tempAddress)
          
        } else if leftType == .Float && rightType == .Int {
            let numL = leftVal as! Float
            let numR = Float(rightVal as! Int)
            
            save(numL - numR, in: tempAddress)
         
        }
        
        let numL = leftVal as! Float
        let numR = rightVal as! Float
        
        save(numL - numR, in: tempAddress)
    }
    
    
    /**
     Description: function to do the division and save the result in the corresponding address
     Parameters: leftAddress, Type: Address ; rightAddress , Type: Address ;  tempAddress, Type: Address
     Return value: N/A
     Error handling: N/A
     **/
    func divide(leftAddress:Address, rightAddress:Address, tempAddress:Address){
        let (leftVal, leftType) = getValue(from:leftAddress)
        let (rightVal, rightType) = getValue(from:rightAddress)
        
        if leftType == .Int && rightType == .Int {
            let numL = Float(leftVal as! Int)
            let numR = Float(rightVal as! Int)
            
            save(numL / numR, in: tempAddress)
           
        } else if leftType == .Int && rightType == .Float {
            let numL = Float(leftVal as! Int)
            let numR = rightVal as! Float
            
            save(numL / numR, in: tempAddress)
          
        } else if leftType == .Float && rightType == .Int {
            let numL = leftVal as! Float
            let numR = Float(rightVal as! Int)
            
            save(numL / numR, in: tempAddress)
       
        }
        
        let numL = leftVal as! Float
        let numR = rightVal as! Float
        
        save(numL / numR, in: tempAddress)
        
    }
    
    /**
     Description: function to do the multiplication and save the result in the corresponding address
     Parameters: leftAddress, Type: Address ; rightAddress , Type: Address ;  tempAddress, Type: Address
     Return value: N/A
     Error handling: N/A
     **/
    func multiply(leftAddress:Address, rightAddress:Address, tempAddress:Address){
        let (leftVal, leftType) = getValue(from:leftAddress)
        let (rightVal, rightType) = getValue(from:rightAddress)
        
        if leftType == .Int && rightType == .Int {
            let numL = Float(leftVal as! Int)
            let numR = Float(rightVal as! Int)
            
            save(numL * numR, in: tempAddress)
       
        } else if leftType == .Int && rightType == .Float {
            let numL = Float(leftVal as! Int)
            let numR = rightVal as! Float
            
            save(numL * numR, in: tempAddress)
        
        } else if leftType == .Float && rightType == .Int {
            let numL = leftVal as! Float
            let numR = Float(rightVal as! Int)
            
            save(numL * numR, in: tempAddress)
          
        }
        
        let numL = leftVal as! Float
        let numR = rightVal as! Float
        
        save(numL * numR, in: tempAddress)
    }
    

    /**
     Description: function to assing the result in the corresponding address
     Parameters: leftAddress, Type: Address  ;  tempAddress, Type: Address
     Return value: N/A
     Error handling: N/A
     **/
    
    func assign(leftAddress:Address, tempAddress:Address){
        let (leftVal, _) = getValue(from: leftAddress)
        
        save(leftVal, in: tempAddress)
    }
    
    // MARK : Logic Operation
    
    /**
     Description: function to evaluate lesser than and save the result in the corresponding address
     Parameters: leftAddress, Type: Address; rightAddress, Type: Address  ;  tempAddress, Type: Address
     Return value: N/A
     Error handling: N/A
     **/
    func lessThan(leftAddress:Address, rightAddress:Address, tempAddress:Address){
        let (leftVal, leftType) = getValue(from:leftAddress)
        let (rightVal, rightType) = getValue(from:rightAddress)
        
        if leftType == .Int && rightType == .Int {
            let numL = Float(leftVal as! Int)
            let numR = Float(rightVal as! Int)
            
            save(numL < numR, in: tempAddress)
            
        } else if leftType == .Int && rightType == .Float {
            let numL = Float(leftVal as! Int)
            let numR = rightVal as! Float
            
            save(numL < numR, in: tempAddress)
            
        } else if leftType == .Float && rightType == .Int {
            let numL = leftVal as! Float
            let numR = Float(rightVal as! Int)
            
            save(numL < numR, in: tempAddress)
            
        }
        
        let numL = leftVal as! Float
        let numR = rightVal as! Float
        
        save(numL < numR, in: tempAddress)
    }
    
 
    /**
     Description: function to evaluate greater than and save the result in the corresponding address
     Parameters: leftAddress, Type: Address; rightAddress, Type: Address  ;  tempAddress, Type: Address
     Return value: N/A
     Error handling: N/A
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
           
        } else if leftType == .Float && rightType != .Float {
            let numL = leftVal as! Float
            let numR = rightVal as! Float
            
            save(numL == numR, in: tempAddress)
          
        } else if leftType == .Int && rightType != .Float {
            let numL = leftVal as! Float
            let numR = rightVal as! Float
            
            save(numL == numR, in: tempAddress)
           
        } else if leftType == .Float && rightType != .Int {
            let numL = leftVal as! Float
            let numR = rightVal as! Float
            
            save(numL < numR, in: tempAddress)
          
        }
    }
    
   
    /**
     Description: function to evaluate not equal than and save the result in the corresponding address
     Parameters: leftAddress, Type: Address; rightAddress, Type: Address  ;  tempAddress, Type: Address
     Return value: N/A
     Error handling: N/A
     **/
    func notEqual(leftAddress:Address, rightAddress:Address, tempAddress:Address){
        let (leftVal, leftType) = getValue(from:leftAddress)
        let (rightVal, rightType) = getValue(from:rightAddress)
        
        if leftType == .Int && rightType == .Int {
            let numL = leftVal as! Int
            let numR = rightVal as! Int
            
            save(numL == numR, in: tempAddress)
          
        } else if leftType == .Float && rightType != .Float {
            let numL = leftVal as! Float
            let numR = rightVal as! Float
            
            save(numL == numR, in: tempAddress)
          
        } else if leftType == .String && rightType != .String {
            let numL = leftVal as! String
            let numR = rightVal as! String
            
            save(numL == numR, in: tempAddress)
       
        } else if leftType == .Bool && rightType != .Bool {
            let numL = leftVal as! Bool
            let numR = rightVal as! Bool
            
            save(numL != numR, in: tempAddress)
           
        }
    }
    
   
    /**
     Description: function to evaluate "and" operator than and save the result in the corresponding address
     Parameters: leftAddress, Type: Address; rightAddress, Type: Address  ;  tempAddress, Type: Address
     Return value: N/A
     Error handling: N/A
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
     Description: function to evaluate "or" operator and save the result in the corresponding address
     Parameters: leftAddress, Type: Address; rightAddress, Type: Address  ;  tempAddress, Type: Address
     Return value: N/A
     Error handling: N/A
     **/
    func orOperator(leftAddress:Address, rightAddress:Address, tempAddress:Address){
        let (leftVal, leftType) = getValue(from: leftAddress)
        let (rightVal, rightType) = getValue(from: rightAddress) //getValue in memory address
        
        let numL = leftVal as! Bool
        let numR = rightVal as! Bool
        
        save(numL || numR, in: tempAddress) //from Virtual memory
    }
    
  
    /**
     Description: function to evaluate "==" operator and save the result in the corresponding address
     Parameters: leftAddress, Type: Address; rightAddress, Type: Address  ;  tempAddress, Type: Address
     Return value: N/A
     Error handling: N/A
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
     Description: function for the GoToFalse instruction
     Parameters: leftAddress, Type: Address ;  tempAddress, Type: Address
     Return value: N/A
     Error handling: N/A
     **/
    
    func goToFalse(leftAddress: Address, tempAddress:Address) -> Int? {
        let (leftVal, _) = getValue(from: leftAddress)
        
        if (!(leftVal as! Bool)){
            return tempAddress - 1
        }
        return nil
    }
  
    
    /**
     Description: function to verify the value inside the limits
     Parameters: leftAddress, Type: Address ;  tempAddress, Type: Address
     Return value: N/A
     Error handling: N/A
     **/
    
    func verify(leftAddress: Address, tempAddress: Address) -> Bool {
        let (tempVal, _) = getValue(from: tempAddress)
        
        if leftAddress < tempVal as! Int || leftAddress < 0 {
            error("Error: Index in array is out of bounds")
            end()
            return false
            
        }
        return true
    }
    

    /**
     Description: function to create ERA and save the result in the corresponding address
     Parameters: leftAddress, Type: Address ;  tempAddress, Type: Address
     Return value: N/A
     Error handling: N/A
     **/
    
    func era(leftAddress:Address, tempAddress:Address){
        //TO DO: era func
    }
    
    /**
     Description: function to create GoSub and save the result in the corresponding address
     Parameters: leftAddress, Type: Address ;  tempAddress, Type: Address
     Return value: N/A
     Error handling: N/A
     **/

    func goSub(leftAddress:Address, tempAddress:Address){
        //TO DO: code
    }
    
    /**
     Description: function to create PARAM and save the result in the corresponding address
     Parameters: leftAddress, Type: Address ;  tempAddress, Type: Address
     Return value: N/A
     Error handling: N/A
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
      Description: Function to create RETURN and save the result in the corresponding address
      Parameters: leftAddress, Type: Address ;  tempAddress, Type: Address
      Return value: N/A
      Error handling: N/A
     **/
    
    func returnOp(leftAddress:Address, tempAddress:Address){
        // Return addresss value
        
        
        // Memory that called current function
        // To Do: memoryStack.last?.setValue(in: Address, tempAddress: value.0)
    }
    
    /**
     Description: function to create RETURN and save the result in the corresponding address
     Parameters: leftAddress, Type: Address
     Return value: N/A
     Error handling: N/A
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
