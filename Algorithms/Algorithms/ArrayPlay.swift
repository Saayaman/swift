//
//  ArrayPlay.swift
//  Algorithms
//
//  Created by ayako_sayama on 2017-07-05.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import Foundation


class ArrayPlay{
    
    func play(_ array:[String]){
        
        var arr = array
        
        print(arr.dropFirst())
        print(arr.dropLast())
        
        print(arr)
        
        print(arr.endIndex)
        
        print(arr.popLast()!)
        print(arr)
        
    }
    
    
}
