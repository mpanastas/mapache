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
    
    func saveCurrentMemory() {
        localsHistory.push(localMemory)
        tempsHistory.push(tempMemory)
        
        localMemory = tempLocalMemory
        tempMemory = tempTempMemory
    }
    
    func createNewFuncMemory() {
        tempLocalMemory = localMemory
        tempTempMemory = tempMemory
        
        tempLocalMemory.reset()
        tempTempMemory.reset()
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
            print("Quad: ",quadIndex)
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
                goTo(tempAddress: quadruple.temp!, quadIndex :&quadIndex)
            case .GoToTrue : // Go to if true
                break
            case .GoToFalse: // Go to if false
                goToFalse(leftAddress: quadruple.operandLeft!, tempAddress: quadruple.temp!, quadIndex: &quadIndex)
            case .ERA :
                era(leftAddress: quadruple.operandLeft!)
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
        let (leftVal, leftType) = getValue(from: leftAddress)
        let (rightVal, rightType) = getValue(from: rightAddress)
        
        if leftType == .Int && rightType == .Int {
            let numL = leftVal as! Int
            let numR = rightVal as! Int
            
            save(numL + numR, in: tempAddress)
            
        } else if leftType == .Int && rightType == .Float {
            let numL = Float(leftVal as! Int)
            let numR = rightVal as! Float
            
            save(numL + numR, in: tempAddress)
            
        } else if leftType == .Float && rightType == .Int {
            let numL = leftVal as! Float
            let numR = Float(rightVal as! Int)
            
            save(numL + numR, in: tempAddress)
            
        } else if leftType == .Float && rightType == .Float {
            let numL = leftVal as! Float
            let numR = rightVal as! Float
            
            save(numL + numR, in: tempAddress)
            
        }
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
            let numL = leftVal as! Int
            let numR = rightVal as! Int
            
            save(numL - numR, in: tempAddress)
            
        } else if leftType == .Int && rightType == .Float {
            let numL = Float(leftVal as! Int)
            let numR = rightVal as! Float
            
            save(numL - numR, in: tempAddress)
            
        } else if leftType == .Float && rightType == .Int {
            let numL = leftVal as! Float
            let numR = Float(rightVal as! Int)
            
            save(numL - numR, in: tempAddress)
            
        } else if leftType == .Float && rightType == .Float {
            let numL = leftVal as! Float
            let numR = rightVal as! Float
            
            save(numL - numR, in: tempAddress)
            
        }
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
            let numL = leftVal as! Int
            let numR = rightVal as! Int
            
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
        else if leftType == .Float && rightType == .Float {
            let numL = leftVal as! Float
            let numR = rightVal as! Float
            
            save(numL * numR, in: tempAddress)
            
        }
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
            let numL = leftVal as! Int
            let numR = rightVal as! Int
            
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
        else if leftType == .Float && rightType == .Float {
            let numL = leftVal as! Float
            let numR = rightVal as! Float
            
            save(numL / numR, in: tempAddress)
            
        }
        
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
            
            save(numL != numR, in: tempAddress)
            
        } else if leftType == .Float && rightType != .Float {
            let numL = leftVal as! Float
            let numR = rightVal as! Float
            
            save(numL != numR, in: tempAddress)
            
        } else if leftType == .Char && rightType != .Char {
            let numL = leftVal as! Character
            let numR = rightVal as! Character
            
            save(numL != numR, in: tempAddress)
            
        } else if leftType == .Bool && rightType != .Bool {
            let numL = leftVal as! Bool
            let numR = rightVal as! Bool
            
            save(numL != numR, in: tempAddress)
            
        }
        
    }
    
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
            let numL = leftVal as! Int
            let numR = rightVal as! Int
            
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
        else if leftType == .Float && rightType == .Float {
            let numL = leftVal as! Float
            let numR = rightVal as! Float
            
            save(numL < numR, in: tempAddress)
            
        }
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
                #warning ("TODO: check negative")
                leftVal = getValue(from :(getValue(from: -1*leftAddress)).0 as! Int)
            }
            
            if rightAddress < 0 {
                #warning ("TODO: check negative")
                rightVal = getValue(from: (getValue(from: -1*leftAddress)).0 as! Int)
            }
            
        }else{
            (leftVal, leftType) = getValue(from: leftAddress)
            (rightVal, rightType) = getValue(from: rightAddress)
        }
        
        if leftType == .Int && rightType == .Int {
            let numL = leftVal as! Int
            let numR = rightVal as! Int
            
            save(numL > numR, in: tempAddress)
            
        } else if leftType == .Float && rightType != .Float {
            let numL = leftVal as! Float
            let numR = rightVal as! Float
            
            save(numL > numR, in: tempAddress)
            
        } else if leftType == .Int && rightType != .Float {
            let numL = Float(leftVal as! Int)
            let numR = rightVal as! Float
            
            save(numL > numR, in: tempAddress)
            
        } else if leftType == .Float && rightType != .Int {
            let numL = leftVal as! Float
            let numR = Float(rightVal as! Int)
            
            save(numL > numR, in: tempAddress)
            
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
    
    
    
    // MARK : Instructions
    
    /**
     Description: function for the GoToFalse instruction
     Parameters: leftAddress, Type: Address ;  tempAddress, Type: Address
     Return value: N/A
     Error handling: N/A
     **/
    
    func goTo(tempAddress: Address, quadIndex: inout Int) {
        quadIndex = tempAddress - 1 // minus 1 because at the end we add 1
    }
    
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
     Description: function to create ERA and save the result in the corresponding address
     Parameters: leftAddress, Type: Address ;  tempAddress, Type: Address
     Return value: N/A
     Error handling: N/A
     **/
    
    func era(leftAddress funcAddress:Address){
        comingFuncAddress.push(funcAddress)
        createNewFuncMemory()
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
        
        _ = comingFuncAddress.pop()
        
        saveCurrentFuncAddress(funcAddress)
        
        quadIndex = function.quadAddress - 1
    }
    
    
    /**
     Description: function to create PARAM and save the result in the corresponding address
     Parameters: leftAddress, Type: Address ;  tempAddress, Type: Address
     Return value: N/A
     Error handling: N/A
     **/
    func param(leftAddress tempAddress:Address, tempAddress paramCount:Address){
        
        func getParamAddress(from paramIndex: Int) -> Address {
            
            func getParam(fromFunc function: Function, paramIndex: Int) -> Variable {
                let (_, varVal) = function.variables.first(where: {$1.paramIndex == paramIndex})!
                return varVal
            }
            
            let actualComingFuncAddress = comingFuncAddress.top()!
            let function = getFuncWithAddress(actualComingFuncAddress)
            let param = getParam(fromFunc: function, paramIndex: paramIndex)
            return param.address
        }
        
        let (tempVal, _) = getValue(from: tempAddress)
        let paramAddress = getParamAddress(from: paramCount-1)
        tempLocalMemory.save(tempVal, in: paramAddress)
        
    }
    
    /**
     Description: function to create ENDPROC and save the result in the corresponding address
     Parameters: quadIndex
     Return value: N/A
     Error handling: N/A
     **/
    func endProc(quadIndex: inout Int){
        quadIndex = getLastQuadFromCallHistory()
        deleteLastFuncAddress()
        recoverLastMemory()
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
     Description: Function to create RETURN and save the result in the corresponding address
     Parameters: leftAddress, Type: Address ;  tempAddress, Type: Address
     Return value: N/A
     Error handling: N/A
     **/
    
    func returnOp(leftAddress val:Address){
        let funcName = getCurrentFuncName()
        let globalReturnVar = functions[globalFunc]?.variables[funcName]
        let globalReturnAddress = (globalReturnVar?.address)!
        
        let (returnVal, _) = getValue(from: val)
        
        save(returnVal, in: globalReturnAddress)
    }
    
    
    /**
     Description: function to create END and save the result in the corresponding address
     Parameters: quadIndex : Int
     Return value: N/A
     Error handling: N/A
     **/
    func end(quadIndex: inout Int) {
        quadIndex = quadsCount
        sendResultToEditorVC()
    }
    
    
    
}
