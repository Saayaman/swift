////
////  practice.swift
////  InterviewProblems_swift
////
////  Created by ayako_sayama on 2017-05-18.
////  Copyright © 2017 ayako_sayama. All rights reserved.
////
//
//import Foundation
//
//func judgeJustLandting() -> Bool {
//    
//    func calcDistance(start: (Int, Int), end: (Int, Int)) -> Int {
//        return abs(start.0 - start.1) + abs(end.0 - end.1)
//    }
//    
//    
//    print("Input start grid”)
//    
//    let tmp: [String]! = readLine()?.components(separatedBy: " ")
//    
//    let tmp2 = tmp.flatMap{ Int($0) }
//    
//    let startGrid = (tmp2[0], tmp2[1])
//    
//    print("Input end grid")
//    
//    let tmp3: [String]! = readLine()?.components(separatedBy: " ")
//    
//    let tmp4 = tmp3.flatMap{ Int($0) }
//    
//    let endGrid = (tmp4[0], tmp4[1])
//    
//    print("Input Fuel")
//    
//    let fuel = readLine().flatMap{ Int($0) }!
//    
//    // print(startGrid, endGrid, fuel)
//    
//    let distance = calcDistance(start: startGrid, end: endGrid)
//    
//    // print(distance)
//    
//    guard distance < fuel else { return false }
//    
//    switch distance {
//    case _ where distance % 2 == 0:
//        return fuel % 2 == 0 ? true: false
//    case _ where distance % 2 == 1:
//        return fuel % 2 == 1 ? false : true
//    default:
//        fatalError(“Never executed”)
//    }
//    
//    fatalError(“Never executed”)
//    
//}
//
//print(judgeJustLandting())
