//
//  s1_computerPurchase.swift
//  ProblemSolving
//
//  Created by ayako_sayama on 2017-08-24.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

class ComputerPurchase {
    
    var RAM:Int!
    var CPU:Int!
    var diskSpace:Int!
    var cpName:String!
    
    
    func isInputValid(_ input:String) -> Bool{
        
        let isValid = true
        
        let array = input.components(separatedBy: " ")
        
//        if array.count != 4{
//            return isValid == false
//        }
        
        if let obj = String(array[0]){
            cpName = obj
        }
        
        
        if let obj = Int(array[1]){
            RAM = obj;
        } else {
            return isValid == false
        }
        
        if let obj = Int(array[2]){
            CPU = obj;
        } else{
            return isValid == false
        }
        
        if let obj = Int(array[3]){
            diskSpace = obj;
        } else {
            return isValid == false
        }
        
        return isValid
    }
    
    func calculateSpec() -> Int{
        return RAM * 2 + CPU * 3 + diskSpace
    }
    
    func getCPName() -> String {
        return cpName
    }
    
    func getTopTwoCP(_ dict:[String:Int]){
        
        
        let mydict = dict
        print(mydict)

        
        var specs = mydict.sorted { $0.value > $1.value }
        
        print(specs[specs.startIndex].key)
        print(specs[specs.index(after: 0)].key)
    }

}

