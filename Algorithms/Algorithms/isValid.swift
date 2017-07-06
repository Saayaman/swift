//
//  isValid.swift
//  Algorithms
//
//  Created by ayako_sayama on 2017-07-03.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import Foundation


func isValid(_ s: String) -> Bool {
    
    var isValid = true
    var b:Character = "c"
    let chars = s.characters
    
    for a in chars{
        
        if chars.count % 2 != 0 {
            isValid = false
            break
        }
   
        if a == "(" || a == "{" || a == "["{
            
            if a == b{
                isValid = false
                break
            }
            
            if b == "{" || b == "(" || b == "["{
                isValid = false
                break
            }
            
            b = a
        }
        
        if a == ")" && b != "("{
            isValid = false
            break
        }
        
        if a == "}" && b != "{"{
            isValid = false
            break
        }
        
        if a == "]" && b != "["{
            isValid = false
            break
        }
        
        if a == ")" || a == "}" || a == "]"{
            b = a
        }

    }
    
    return isValid
}
