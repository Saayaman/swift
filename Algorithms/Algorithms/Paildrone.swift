//
//  Paildrone.swift
//  Algorithms
//
//  Created by ayako_sayama on 2017-06-26.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import Foundation


func isPalindrome(_ x: Int) -> Bool {
    
    let staticX = x
    var xNew = abs(x)
    
    print(xNew)
    
    
    var reversed = 0
    
        while xNew > 0 {
            reversed = reversed * 10 + xNew % 10
            xNew = xNew / 10
        }

        
        if reversed > Int(Int32.max) || reversed < Int(Int32.min) {
            reversed = 0
        }
    
    print(reversed)
    
    return reversed == staticX
}


func isPalindrome_str(_ x: Int) -> Bool {
    let x_str = String(x)
    
    let reversed = String(x_str.characters.reversed())
    print(reversed)
    
    return x_str == reversed
}
