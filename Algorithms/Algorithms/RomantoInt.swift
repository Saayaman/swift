//
//  RomantoInt.swift
//  Algorithms
//
//  Created by ayako_sayama on 2017-06-28.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import Foundation

    func romanToInt(_ s: String) -> Int {
        
        
        //まずは2文字を探して、1文字ずつのローマ字を探す
        //それぞれ見つけたら、数字を足していき、ローマ文字を取っていく。
        //ポイント：2文字のローマ字から先に探す
        
        var arabicValue = 0
        var romanValue = s
        
        let romanChars:[String] = ["CM", "M", "CD", "D", "XC", "C", "XL", "L", "IX", "X", "IV", "V", "I"]
        
        let arabicValues = [900, 1000, 400, 500, 90, 100, 40, 50, 9, 10, 4, 5, 1]
        
        
        for (index, chars) in romanChars.enumerated(){
            
            
            if romanValue.range(of: chars) != nil{
                
                let tok = romanValue.components(separatedBy: chars)
                let count = tok.count-1
               
                arabicValue += (arabicValues[index] * (count))
                
                romanValue = romanValue.replacingOccurrences(of: chars, with: "")
            }

        }

        return arabicValue
        
    }
