//
//  TwoSums.swift
//  Algorithms
//
//  Created by ayako_sayama on 2017-06-26.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import Foundation


var arrayN = [1,4,5,6,8,9,11]
var target = 6



    
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        var dictionary = [Int:Int]()
        
        for (i,value) in nums.enumerated() {
            
            if let first = dictionary[value] {
                return [first,i]
            } else{
                dictionary[target - value] = i
                print("Dictionary: \(dictionary)")
                
            }
        }
        return [0]
    }
