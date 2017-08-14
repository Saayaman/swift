//
//  isValid.swift
//  Algorithms
//
//  Created by ayako_sayama on 2017-07-03.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import Foundation


func isValid(_ s: String) -> Bool {
    
    var count = 0
    var stack = [Character]()
    var parentheses: [Character: Character] = ["(": ")", "{": "}", "[": "]"]
    
    for c in s.characters {
        if let end = parentheses[c] {
            stack.append(end)
            print("Fisrt: \(c)","\(count)")
            count += 1
            
        } else if parentheses.values.contains(c) {
            
            if stack.isEmpty || stack.removeLast() != c {
                return false
            }
            
            print("Second: \(c)+ \(count)")
            count += 1
        }
        
        print(stack)
    }
    
    return stack.isEmpty
}
