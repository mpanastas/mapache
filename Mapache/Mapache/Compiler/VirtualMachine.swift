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
    func sendResultToEditorVC() {
        if errors.isEmpty {
            editorVC.showResults(results: outputs, error: false)
        } else {
            editorVC.showResults(results: errors, error: true)
        }
    }
    
    func output(_ output: String) {
        if errors.isEmpty {
            outputs.append(output)
        }
    }
    
    func error(_ error: String) {
        errors.append(error)
    }
    
}

extension Wizard {
    
    func saveCurrentMemory(){
        localsHistory.push(localMemory)
        tempsHistory.push(tempMemory)
        
        localMemory.reset()
        tempMemory.reset()
    }
    
    func recoverLastMemory(){
        localMemory = localsHistory.pop()!
        tempMemory = tempsHistory.pop()!
    }
    
    func addQuadToCallHistory(_ quad: Int) {
        callsHistory.push(quad)
    }
    
    func getLastQuadFromCallHistory() -> Int {
        return callsHistory.pop()!
    }
    
    func saveCurrentFuncAddress(_ address: Address) {
        funcAddressHistory.push(address)
    }
    
    func getCurrentFunc() -> Function {
        let address = funcAddressHistory.top()!
        return getFuncWithAddress(address)
    }
    
    func getCurrentFuncName() -> String {
        #warning ("TODO: ")
        let function = getCurrentFunc()
        
        if let funcName = functions.someKey(forValue: function) {
            print(funcName)
        }
 
        return getFuncName(of: function)
    }
    func deleteLastFuncAddress() {
        _ = funcAddressHistory.pop()
    }
    
    func getFuncWithAddress(_ address: Address) -> Function {
        return functions.values.first(where: {$0.address == address})!
    }
    
}

// MARK: - Virtual Machine
extension Wizard {
    
    func execute() {
        var quadIndex = 0
        
        while quadIndex < quadsCount {
            let quadruple = quadruples[quadIndex]
            
            switch quadruple.op {
            case .Sum :
                add(leftAddress: quadruple.operandLeft!, rightAddress: quadruple.operandRight!, tempAddress: quadruple.temp!)
            case .Sub :
                sub(leftAddress: quadruple.operandLeft!, rightAddress: quadruple.operandRight!, tempAddress: quadruple.temp!)
            case .Mult:
                multiply(leftAddress: quadruple.operandLeft!, rightAddress: quadruple.operandRight!, tempAddress: quadruple.temp!)
            case .Div:
                divide(leftAddress: quadruple.operandLeft!, rightAddress: quadruple.operandRight!, tempAddress: quadruple.temp!)
            case .Assign:
                assign(leftAddress: quadruple.operandLeft!, tempAddress: quadruple.temp!)
            case .Equal:
                equal(leftAddress: quadruple.operandLeft!, rightAddress: quadruple.operandRight!, tempAddress: quadruple.temp!)
            case .NotEqual:
                notEqual(leftAddress: quadruple.operandLeft!, rightAddress: quadruple.operandRight!, tempAddress: quadruple.temp!)
            case .LessThan:
                lessThan(leftAddress: quadruple.operandLeft!, rightAddress: quadruple.operandRight!, tempAddress: quadruple.temp!)
            case .GreaterThan:
                greatThan(leftAddress: quadruple.operandLeft!, rightAddress: quadruple.operandRight!, tempAddress: quadruple.temp!)
            case .And:
                andOperator(leftAddress: quadruple.operandLeft!, rightAddress: quadruple.operandRight!, tempAddress: quadruple.temp!)
            case .Or:
                orOperator(leftAddress: quadruple.operandLeft!, rightAddress: quadruple.operandRight!, tempAddress: quadruple.temp!)
            case .GoTo :
                quadIndex = quadruple.temp! - 1 // minus 1 because at the end we add 1
            case .GoToTrue : // Go to if true
                break
            case .GoToFalse: // Go to if false
                goToFalse(leftAddress: quadruple.operandLeft!, tempAddress: quadruple.temp!, quadIndex: &quadIndex)
            case .ERA :
                era(leftAddress: quadruple.operandLeft!, tempAddress: quadruple.temp!)
            case .GoSub:
                goSub(leftAddress : quadruple.operandLeft!, quadIndex: &quadIndex)
            case .Param:
                param(leftAddress: quadruple.operandLeft!, tempAddress: quadruple.temp!)
            case .EndProc:
                endProc(quadIndex: &quadIndex)
                break
            case .Print:
                printOp(leftAddress: quadruple.operandLeft!)
            case .Verify:
                verify(leftAddress: quadruple.operandLeft!, tempAddress: quadruple.temp!, quadIndex: &quadIndex)
            case .Return:
                returnOp(leftAddress: quadruple.operandLeft!)
            case .End:
                end(quadIndex: &quadIndex)
            case .FalseBottomMark:
                break
            }
            quadIndex += 1
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
            
        } else if leftType == .Char && rightType != .Char {
            let numL = leftVal as! Character
            let numR = rightVal as! Character
            
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
        let (leftVal, _) = getValue(from: leftAddress) //getValue in memory address
        let (rightVal, _) = getValue(from: rightAddress) //getValue in memory address
        
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
        let (leftVal, _) = getValue(from: leftAddress)
        let (rightVal, _) = getValue(from: rightAddress) //getValue in memory address
        
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
        } else if leftType == .Char && rightType == .Char {
            let numL = leftVal as! Character
            let numR = rightVal as! Character
            
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
    
    func goToFalse(leftAddress: Address, tempAddress:Address, quadIndex: inout Int) {
        let (leftVal, _) = getValue(from: leftAddress)
        
        if (!(leftVal as! Bool)){
            quadIndex = tempAddress - 1
        }
    }
    
    
    /**
     Description: function to verify the value inside the limits
     Parameters: leftAddress, Type: Address ;  tempAddress, Type: Address
     Return value: N/A
     Error handling: N/A
     **/
    
    func verify(leftAddress: Address, tempAddress: Address, quadIndex: inout Int) {
        let (tempVal, _) = getValue(from: tempAddress)
        
        if leftAddress <= tempVal as! Int || leftAddress < 0 {
            error("Error: Index in array is out of bounds")
            end(quadIndex: &quadIndex)
        }
    }
    
    
    /**
     Description: function to create ERA and save the result in the corresponding address
     Parameters: leftAddress, Type: Address ;  tempAddress, Type: Address
     Return value: N/A
     Error handling: N/A
     **/
    
    func era(leftAddress:Address, tempAddress:Address){
        #warning ("TODO: era func")
        /*
         // Get function name from address
         let functionName = getFunctionName(in: functionAddress)
         
         guard functionName != "Error" else {print("Error no function with start address"); return}
         
         // Generate instance of memory
         let functionMemory = funcTable[functionName]?.memory.copy()
         
         // Add memory to stack
         memoryStack.append(functionMemory!)
         */
    }
    
    /**
     Description: function to create GoSub and save the result in the corresponding address
     Parameters: leftAddress, Type: Address ;  tempAddress, Type: Address
     Return value: N/A
     Error handling: N/A
     **/
    func goSub(leftAddress funcAddress:Address, quadIndex: inout Int){
        saveCurrentMemory()
        addQuadToCallHistory(quadIndex)
        
        let function = getFuncWithAddress(funcAddress)
        
        saveCurrentFuncAddress(funcAddress)
        
        quadIndex = function.quadAddress - 1
    }
    
    func endProc(quadIndex: inout Int){
        quadIndex = getLastQuadFromCallHistory()
        deleteLastFuncAddress()
        recoverLastMemory()
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
        case .Char:
            let value = leftVal as! Character
            saveParam(value, in: tempAddress)
        case .Bool:
            let value = leftVal as! Bool
            saveParam(value, in: tempAddress)
        default:
            break
        }
    }
    
    
    /**
     Description: Function to create RETURN and save the result in the corresponding address
     Parameters: leftAddress, Type: Address ;  tempAddress, Type: Address
     Return value: N/A
     Error handling: N/A
     **/
    
    func returnOp(leftAddress val:Address){
        let funcName = getCurrentFuncName()
        let globalReturnVar = functions[funcName]?.variables[funcName]
        let globalReturnAddress = (globalReturnVar?.address)!
        
        let (returnVal, _) = getValue(from: val)
        
        save(returnVal, in: globalReturnAddress)
    }
    
    /**
     Description: function to create RETURN and save the result in the corresponding address
     Parameters: leftAddress, Type: Address
     Return value: N/A
     Error handling: N/A
     **/
    func printOp(leftAddress:Address){
        let (outputVal, _) = getValue(from: leftAddress)
        let result = "\(outputVal)"
        print("PRINT: ")
        print(result)
        output(result)
        /*
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
         */
    }
    
    func end(quadIndex: inout Int) {
        quadIndex = quadsCount
        sendResultToEditorVC()
    }
    

    
}
