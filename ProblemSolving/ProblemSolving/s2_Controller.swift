//
//  s2_Controller.swift
//  ProblemSolving
//
//  Created by ayako_sayama on 2017-08-24.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import Foundation


class s2Controller{
    
    static func execute(){
        
        var isInputCorrect = false
        let errorMessage = "Wrong input, do it again!"
        
        var numOfInput:Int = 0
        
        while !isInputCorrect{

            print("input number of characters: from 1 to 20")
        
            if let input = readLine(){
                
                if let num = Int(input) {
                    
                    if num > 0 && num < 21 {
                        numOfInput = num
                        isInputCorrect = true
                        
                        
                    } else if num < 0 {
                        print("Num must be bigger than 0.")
                    } else{
                        print("Num must be within 20")
                    }
                    
                } else{
                    print(errorMessage)
                }
            } else{
                print(errorMessage)
            }
            
        }
        
        
        let huffman = Huffman()
        
        for num in 1...numOfInput{
            
            isInputCorrect = false
            
            while !isInputCorrect{
                print("Enter the node \(num)'s alphabet and binary sequence")
                print("[Alphabet] [Binary Sequence]")
                
                if let node = readLine(){
                    let result = huffman.isInputValid(node)
                    if result{
                        isInputCorrect = true
                        
                    } else{
                        print(errorMessage)
                        isInputCorrect = false
                    }
                } else{
                    print(errorMessage)
                }
                
            }
        }
        
        
        isInputCorrect = false
        
        while !isInputCorrect{
            print("Enter the binary sequence to output characters that respond to the nodes")
            if let input = readLine(){
                let bi = huffman.isBinary(input)
                if bi {
                isInputCorrect = true
                  print(huffman.calculateSequence(input))
                } else {
                    print(errorMessage)
                }
            }
            
        }
        
        
    
    
    }



}
