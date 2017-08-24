//
//  s2_HuffmanEncoding.swift
//  ProblemSolving
//
//  Created by ayako_sayama on 2017-08-24.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import Foundation


class Huffman{
    
    
    var nodeDict:[String:String] = [:]
    
    
    func isInputValid(_ input:String) -> Bool{
        
        var array = input.components(separatedBy: " ")
   
        // range will be nil if no letters is found
        if (array[0].rangeOfCharacter(from: NSCharacterSet.letters) != nil) {
            
            if isBinary(array[1]){
                nodeDict[array[1]] = array[0]
            }
            
        }
        else {
            print("letters not found")
            return false
        }
        
        return true
    }
    
    func isBinary(_ str:String) -> Bool{
        
        let charset = CharacterSet(charactersIn: "23456789")

        if str.rangeOfCharacter(from: charset) == nil {
            return true
        } else{
            return false
        }
    }
    
    
    func calculateSequence(_ str:String) -> String{
        
        var output = ""
        var sequence = str
        
        while sequence.characters.count != 0 {
            
            let range = sequence.index(sequence.startIndex, offsetBy: 2)
            let twoDigits = sequence.substring(to: range)
            
            if let hasKey = nodeDict[twoDigits]{
                output.append(hasKey)
                
                let index = sequence.index(sequence.startIndex, offsetBy: 2)
                sequence = sequence.substring(from: index)
                
            }
            
            let rangeThree = sequence.index(sequence.startIndex, offsetBy: 3)

            let threeDigits = sequence.substring(to: rangeThree)
            
            if let hasKey = nodeDict[threeDigits]{
                output.append(hasKey)
                
                //let range = sequence.index(sequence.startIndex, offsetBy: 3)..<sequence.endIndex
                //sequence.removeSubrange(range)
                
                let index = sequence.index(sequence.startIndex, offsetBy: 3)
                sequence = sequence.substring(from: index)
                
            }
            
        }
        
        
            
//            for (alphabet,node) in nodeDict {
//                
//                let nodeChar = node.characters.count
//                let range = sequence.index(sequence.startIndex, offsetBy: nodeChar)
//                let sequencePart = str.substring(to: range)
//                
//                if sequencePart == node {
//                    
//                    let range = sequence.index(sequence.startIndex, offsetBy: nodeChar - 1)..<sequence.endIndex
//                    sequence.removeSubrange(range)
//                    output.append(alphabet)
//                }
//            }
            

        
        return output
    }
    
    
    
}
