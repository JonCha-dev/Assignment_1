//
//  Fib.swift
//  Calculator
//
//  Created by Jon Chang on 6/15/23.
//
func fib(_ n:Int) {
    if n > 0 {
        print(0)
    }
    if n > 1 {
        print(1)
    }
    
    var a = 0
    var b = 1
    for _ in (2...n) {
        let tmp = b
        b += a
        a = tmp
        
        print(b)
    }
}
