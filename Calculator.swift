//
//  Calculator.swift
//  Calculator
//
//  Created by Jon Chang on 6/14/23.
//

class Calculator {
    func add(_ num1: Int, _ num2: Int) -> String {
        // check if both inputs have same sign
        if (num1 > 0) == (num2 > 0) {
            // get sign of expected outcome
            let isPositive = (num1 > 0) ? true : false
            
            // inbounds check
            if (isPositive && ((Int.max - num1) < num2)) || (!isPositive && ((Int.min - num1) > num2)) {
                return "Error: Sum out of bounds [Int.min, Int.max]."
            }
        }
        
        let ans = (num1 + num2)
        return "\(num1) + \(num2) = \(ans)"
    }
    
    func sub(_ num1: Int, _ num2: Int) -> String {
        var carry = 0
        var _num2 = num2
        
        // 2nd input is min int
        if num2 == Int.min {
            _num2 += 1
            carry += 1
        }
        //
        
        // check if both inputs have different sign
        if (num1 >= 0) != (num2 >= 0) {
            // get sign of expected outcome
            let isPositive = (num1 > num2) ? true : false
            
            //inbounds check
            if (isPositive && (Int.max - carry + num2) < num1) || (!isPositive && (abs(Int.min - num1) < num2)) {
                return "Error: Difference out of bounds [Int.min, Int.max]."
            }
        }
        
        let ans = num1 - _num2 + carry
        
        // add parentheses if negative
        let str = (num2 >= 0) ? "\(num2)" : "(\(num2))"
        return "\(num1) - \(str) = \(ans)"
    }
    
    func mul(_ num1: Int, _ num2: Int) -> String {
        // get max value of expected product
        let maxval = (num1 >= 0) == (num2 >= 0) ? Int.max : Int.min
        
        // inbounds check
        let absnum2 = abs(num2)
        let maxquot = abs(maxval / num1)
        let rem = maxval % num1
        
        if absnum2 > maxquot || (absnum2 == maxquot && rem != 0) {
            return "Error: Product out of bounds [Int.min, Int.max]."
        }
        
        let ans = num1 * num2
        
        return "\(num1) * \(num2) = \(ans)"
    }
    
    func div(_ num1: Int, _ num2: Int) -> String {
        
        // divide by zero check
        if num2 == 0 {
            return "Error: Cannot divide by zero."
        }
        
        let ans = num1 / num2
        
        return "\(num1) / \(num2) = \(ans)"
    }
    
    func mod(_ num1: Int, _ num2: Int) -> String {
        let ans = num1 % num2
        
        return "\(num1) % \(num2) = \(ans)"
    }
}
