//
//  SetPlay.swift
//  Algorithms
//
//  Created by ayako_sayama on 2017-08-01.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import Foundation


class SetPlay{
    
    
    func play(){
        
        
        
        var mySet:Set = [3,5,7,8,9,19]
        print(mySet.count)
        print(mySet.isEmpty)
        
        mySet.insert(20)
        print(mySet)
        
        mySet.remove(5)
        print(mySet)
        
        
        print(mySet.contains(100))
        
        let sortedSet = mySet.sorted()
        print(sortedSet)
        
        
        let mySet2:Set<AnyHashable> = ["Mike",5,"Cathy","Malcom", 7]
        print(mySet2)
        
    }
    
    func playSetOperations(){
        
        
        let oddDigits: Set = [1, 2, 5, 6, 9]
        let evenDigits: Set = [0, 2, 4, 6, 8]
        let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]
        
        
        print(oddDigits.union(evenDigits).sorted())
        //[0, 1, 2, 4, 5, 6, 8, 9]

        print(oddDigits.intersection(evenDigits).sorted())
        // [2, 6]
        
        print(oddDigits.subtracting(singleDigitPrimeNumbers).sorted())
        // [1, 6, 9]
        
        print(oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted())
        // [1, 3, 6, 7, 9]

    }
    
    
    func playMembership(){
        let houseAnimals: Set = ["🐶", "🐱"]
        let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
        let cityAnimals: Set = ["🐦", "🐭"]
        
        print(houseAnimals.isSubset(of: farmAnimals))
        // true
        print(farmAnimals.isSuperset(of: houseAnimals))
        // true
        print(farmAnimals.isDisjoint(with: cityAnimals))
        // true
    }
    
    
}
