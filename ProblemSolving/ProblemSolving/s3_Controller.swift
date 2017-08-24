//
//  s3_Controller.swift
//  ProblemSolving
//
//  Created by ayako_sayama on 2017-08-24.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import Foundation

class s3Controller{
    
    static func execute(){
        var isInputCorrect = false
        var numofHouses:Int = 0
        var addresses:[Int] = []
        var numOfHydrants:Int = 0
        
        
        let errorMessage = "Wrong input, try again!"
        
        let hireHose = FireHose()
        
        while !isInputCorrect{
            print("Input number of Houses")
            
            if let num = readLine(){
                if let convertNum = Int(num){
                    isInputCorrect = true
                    numofHouses = convertNum
                } else{
                    print(errorMessage)
                    isInputCorrect = false
                }
            }
        }
        
        
        
        for num in 1...numofHouses {
            
            isInputCorrect = false
            while !isInputCorrect {
                
                print("Input house \(num)'s Address from 0 to 1,000,000")
                if let num = readLine(){
                    if let convertNum = Int(num){
                        
                        if convertNum >= 0 && convertNum <= 1000000 {
                            addresses.append(convertNum)
                            isInputCorrect = true
                            
                        } else {
                            print(errorMessage)
                        }
                        
                    } else{
                        print(errorMessage)
                        isInputCorrect = false
                    }
                }
                
            }
        }
        
        isInputCorrect = false
        while !isInputCorrect{
            
            print("How many minimum Hydrants can you place between houses?")
            if let num = readLine(){
                if let convertNum = Int(num){
                    
                    if convertNum >= 0 && convertNum <= 1000{
                        numOfHydrants = convertNum
                        isInputCorrect = true
                        
                    } else {
                        print(errorMessage)
                    }
                    
                } else{
                    print(errorMessage)
                    isInputCorrect = false
                }
            }
            
        }
        
        
        print(hireHose.calculateTotalHydrants(addresses, numOfHydrants))
        
    }
}
