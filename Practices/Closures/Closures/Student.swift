//
//  Student.swift
//  Closures
//
//  Created by ayako_sayama on 2017-08-18.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import Foundation


public class Student {
    
    var name:String?
    static var collegeName:String?
    
    init(_ name:String) {
        self.name = name
    }
    
    func display() {
        print("\(name) \(Student.collegeName)")
    }
}
