//
//  s3_Firehose.swift
//  ProblemSolving
//
//  Created by ayako_sayama on 2017-08-24.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import Foundation


class FireHose{
    
    func calculateTotalHydrants(_ array:[Int], _ numofHydrant:Int) -> Int {
        
        let arr = array.sorted()
        var minDiff:Int = 10000000
        
        for count in 1...arr.count{
            
            if minDiff > arr[count - 1] - arr[count]{
                minDiff = arr[count - 1] - arr[count]
            }
            
            
        }
        
        
        return abs(minDiff / numofHydrant)
    }
    
}
