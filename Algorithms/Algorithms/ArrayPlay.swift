//
//  ArrayPlay.swift
//  Algorithms
//
//  Created by ayako_sayama on 2017-07-05.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import Foundation


class ArrayPlay{
    
    func play(_ array:[String]){
        
        var arr = array
        
        print(arr.dropFirst())
        print(arr.dropLast())
        
        print(arr)
        
        print(arr.endIndex)
        
        print(arr.popLast()!)
        print(arr)
        
        var elements = [5,3,2,1,9,7,4,10]
        
        let index2 = elements.index(after: 5)
        print(index2)
        
        let index3 = elements.index(before: 2)
        print(index3)
        
        let index5 = elements.startIndex
        print(index5)
        
        let index6 = elements.endIndex
        print(index6)
        print(elements.count)
        
        //        elements.insert(10, at: 3)
        //        print(elements)
        //
        //        elements.append(12)
        //        print(elements)

        
        
        var elements2 = ["Nate", "Cate", "Sasha", "Goro", "Gugu", "Imo"]
        
        if let index = elements2.index(of: "Nate") {
           elements2.remove(at: index)
            print(elements2)
        }
        
        if elements2.contains("Goro") {
            print("yes")
        }
        


        
        //よくわからない
        
        let index4 = elements.index(1, offsetBy: 2)
        print(index4)
        
        let index7 = elements.index(5, offsetBy: 2, limitedBy: 7)
        print(index7!)

        
        //数字の4がいるところをindexにして、4を抜き取る

            
        elements.reverse()
        print(elements)
            
        print(elements.first!)
        print(elements[0])
        print(elements.last!)
        print(elements[elements.count - 1])


    }
    
    
}
