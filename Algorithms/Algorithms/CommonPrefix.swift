//
//  CommonPrefix.swift
//  Algorithms
//
//  Created by ayako_sayama on 2017-07-03.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import Foundation


func longestCommonPrefix(_ strs: [String]) -> String {
    
    guard !strs.isEmpty else { return "" }
    
    return strs
        .dropFirst()
        .reduce(strs[0]) { $0.0.commonPrefix(with: $0.1) }
}


//func longestCommonPrefix(_ strs: [String]) -> String {
//
//    var storedPrefix = ""
//    var commonPrefix = ""
//    let array = strs
//    
//    if (array.count == 0){ return ""}
//
//    for (index, word) in array.enumerated() {
//
//        for (indexTwo, wordTwo) in array.enumerated(){
//            
//            if index != indexTwo{
//                
//                let arrayA = Array(word.characters)
//                var arrayB = Array(wordTwo.characters)
//                
//
//                if word == "" || wordTwo == ""{
//                    break
//                }
//                
//                for (index,a) in arrayA.enumerated(){
//                                    
//                    if a == arrayB[index] {
//                        commonPrefix.insert(a, at: commonPrefix.endIndex)
//                    }
//                    
//                    if a != arrayB[index]{
//                        break
//                    }
//                    
//                if commonPrefix.characters.count > storedPrefix.characters.count {
//                    storedPrefix = commonPrefix
//                }
//                
//                commonPrefix = ""
//                
//                print(storedPrefix)
// 
//            }
//            }
//
//        }
//        
//    }
//
//    return storedPrefix
//}
