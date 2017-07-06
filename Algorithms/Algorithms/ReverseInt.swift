//
//  ReverseInt.swift
//  Algorithms
//
//  Created by ayako_sayama on 2017-06-26.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import Foundation



let minValue = Int.min  // minValue is equal to 0, and is of type UInt8
let maxValue = Int.max

func reverse(_ x: Int) -> Int {
    
    //    let maxValue = 2147483647
    //    let minValue = -2147483648
    
    let maxValue:Int = Int(Int32.max)
    let minValue:Int = Int(Int32.min)
    
    let sign = x < 0 ? -1:1
    var x = abs(x)
    
    var reversed = 0
    while x != 0{
        
        print("\(reversed * 10) + \(x % 10) = \(reversed * 10 + x % 10)")
        reversed = reversed * 10 + x % 10
        
        x = x / 10
        print(x)
        
        if reversed*sign > maxValue || reversed*sign < minValue {
            return 0
        }
        
    }
    
    return reversed * sign
}
