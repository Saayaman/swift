//
//  FInal.swift
//  Closures
//
//  Created by ayako_sayama on 2017-08-18.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import Foundation


class Final{
    
    final var name = "Ayako Sayama"
    init() { name = "Ayako Superman" }
    
}

class Student: Final{
    override var name = "new name"
}
