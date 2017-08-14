//
//  DictionaryPlay.swift
//  Algorithms
//
//  Created by ayako_sayama on 2017-08-02.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import Foundation

class DictionaryPlay{
    
    
    func play(){
        var nameOfIntegers = [Int:String]()
        nameOfIntegers[16] = "sixteen"
        print(nameOfIntegers)//[16: "sixteen"]
        
        var airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

        airports["LHR"] = "London"
        airports["YYZ"] = "Vancouver"
        
        print(airports)
        
        
        var airport = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
        if (airport["YVR"] != nil){
            airport["YVR"] = "Vancouver"
        }
        
        print("airport: \(airport)")
        
        let sorted = airport.keys.sorted(by: <)
        print(sorted)

    }
    
    func playAdvance(){
        let dictionary = [
            "A" : 9,
            "Z" : 3,
            "D" : 6,
            "O" : 12
        ]
        
        
        let sortedDic = dictionary.sorted() { $0.0 < $1.0 }
        print(sortedDic)//[(key: "A", value: 9), (key: "D", value: 6), (key: "O", value: 12), (key: "Z", value: 3)]

        
        let sortedKeys = Array(dictionary.keys).sorted(by: <)
        print(sortedKeys)//["A", "D", "O", "Z"]

        

        let fruitsDict = ["apple": 5, "pear": 9, "grape": 1]
        let fruitsTupleArray = fruitsDict.sorted{ $0.value > $1.value }
        
        print(fruitsTupleArray) // [(key: "pear", value: 9), (key: "apple", value: 5), (key: "grape", value: 1)]
        
        
        var items = [Int: [String]]()
        
        items[0] = ["Apple","/image/apple.png","29"]
        items[1] = ["AAA","/image/aaa.png","29"]
        items[2] = ["Banana","/image/banana.png","29"]
        
        let itemResult = items.sorted { (first: (key: Int, value: [String]), second: (key: Int, value: [String])) -> Bool in
            return first.value.first! < second.value.first!
        }
        
        print (itemResult)
    }
    
}
