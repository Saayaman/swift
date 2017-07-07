//
//  RemoveDuplicates.swift
//  Algorithms
//
//  Created by ayako_sayama on 2017-07-07.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import Foundation

func removeDuplicates(_ nums: inout [Int]) -> Int {
    
    //inout changes the original value
    
    var a = 0
    
    for num in nums{
        
        if nums.contains(a){
            print("contains!")
        }
        
        a = num
    }
    
    return nums.count
}
