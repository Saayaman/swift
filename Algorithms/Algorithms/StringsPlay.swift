//
//  StringsPlay.swift
//  Algorithms
//
//  Created by ayako_sayama on 2017-06-28.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import Foundation


class StringsPlay{
    
    func playit(){
    
    let str = "Hello, playground"
    
    let index = str.index(str.startIndex, offsetBy: 5)
    print(str.substring(to: index))  // Hello
    
    let index2 = str.index(str.startIndex, offsetBy: 7)
    print(str.substring(from: index2))  // playground
    
    let index3 = str.index(str.endIndex, offsetBy: -12)
    print(str.substring(to: index3))  // playground
    
    
    let start = str.index(str.startIndex, offsetBy: 7)
    let end = str.index(str.endIndex, offsetBy: -6)
    let range = start..<end
    
    print(str.substring(with: range))  // play
    
    
    if str.range(of:"Hello") != nil{
    print("exists!")
    }
    
    if str.lowercased().range(of:"hello") != nil {
    print("exists, again!")
    }
    
        let aString = "This is my string"
        let newString = aString.replacingOccurrences(of: " ", with: "+", options: .literal, range: nil)
        
        print(newString) //This+is+my+string
        
        
        let toArray = aString.components(separatedBy: " ")
        print(toArray)
        
        let backToString = toArray.joined(separator: "+")
        print(backToString)
        
        let string = "Hello"
        
        let characters = Array(string.characters)
        let dropped = characters.dropLast()
        print(dropped)
        
        let joinedChar = String(characters)
        print(joinedChar)

        let line = "a:b,c;d"
        let separators = CharacterSet(charactersIn: ":,;")
        let parts = line.components(separatedBy: separators)
        print(parts)
        
        
        
    }
}
