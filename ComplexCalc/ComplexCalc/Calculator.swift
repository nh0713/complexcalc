//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    
//    var lhs: Int
//    var rhs: Int
//
//    init(lhs: Int, rhs: Int) {
//        self.lhs = lhs
//        self.rhs = rhs
//    }
    
    public func add(lhs : Int, rhs : Int) -> Int {
        return lhs + rhs
    }
    
    public func add(_ numbers : [Int]) -> Int {
        var sum = 0
        for num in numbers {
            sum += num
        }
        return sum
    }
    
    public func add(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 + rhs.0, lhs.1 + rhs.1)
    }
    
    public func add(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        let xSum = lhs["x"]! + rhs["x"]!
        let ySum = lhs["y"]! + rhs["y"]!
        return ["x": xSum, "y": ySum]
    }

    public func subtract(lhs : Int, rhs : Int) -> Int {
        return lhs - rhs
    }
    
    public func subtract(lhs : (Int, Int), rhs : (Int, Int)) -> (Int, Int){
        return (lhs.0 - rhs.0, lhs.1 - rhs.1)
    }
    
    public func subtract(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        let xSum = lhs["x"]! - rhs["x"]!
        let ySum = lhs["y"]! - rhs["y"]!
        return ["x": xSum, "y": ySum]
    }
    
    public func multiply(lhs : Int, rhs : Int) -> Int {
        return lhs * rhs
    }
    
    public func multiply(_ numbers : [Int]) -> Int {
        var sum = 1
        for num in numbers {
            sum *= num
        }
        return sum
    }
    
    public func divide(lhs : Int, rhs : Int) -> Int {
        return lhs / rhs
    }
    
    public func mathOp(lhs : Int, rhs : Int, op : (Int, Int) -> Int) -> Int {
        return op(lhs, rhs)
    }
    
    public func mathOp(args : [Int], beg : Int, op : (Int, Int) -> Int) -> Int {
        var final = args[0]
        for num in 0..<args.count - 1 {
            final = op(final, args[num + 1])
//            print("\(final), \(args[num + 1])")
        }
        return final
        
    }
    
    public func count(_ numbers : [Int]) -> Int{
        return numbers.count
    }
    
    public func avg(_ numbers : [Int]) -> Int{
        var sum = 0
        let total = numbers.count
        for num in numbers {
            sum += num
        }
        return sum / total
    }
}
