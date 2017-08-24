//
//  s1_Controller.swift
//  ProblemSolving
//
//  Created by ayako_sayama on 2017-08-24.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import Foundation

class s1Controller{
    
    static func execute(){
        var isInputCorrect = false
        var numofComputers:Int = 0
        var specs:[String:Int] = [:]
        
        let computerPurchase = ComputerPurchase()
        
        while !isInputCorrect{
            print("Input number of computers")
            
            if let num = readLine(){
                if let convertNum = Int(num){
                    isInputCorrect = true
                    numofComputers = convertNum
                } else{
                    print("wrong input, try again")
                    isInputCorrect = false
                }
            }
        }
        
        if numofComputers > 0 {
            
            for num in 1...numofComputers{
                
                isInputCorrect = false
                
                while !isInputCorrect{
                    print("Enter computer \(num)'s spec: ")
                    print("[Name] [RAM] [CPU] [Drive Space]")
                    if let spec = readLine(){
                        let result = computerPurchase.isInputValid(spec)
                        if result{
                            let specResult = computerPurchase.calculateSpec()
                            let cpName = computerPurchase.getCPName()
                            specs[cpName] = specResult
                            isInputCorrect = true
                            
                        } else{
                            print("wrong input, try again")
                            isInputCorrect = false
                        }
                    }
                }
            }
            
            computerPurchase.getTopTwoCP(specs)
        }

    }
}
