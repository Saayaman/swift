//
//  Programmer.swift
//  Closures
//
//  Created by ayako_sayama on 2017-08-18.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import Foundation


class Programmer{
    
    static var isGood:Bool?
    var experienceYears:Int?
    
    
    static func execute(){
        isGood = true
        
        //static メソッドからはnon-static変数はアクセスできない。インスタンスが必要
        let person1 = Programmer();
        person1.experienceYears = 10;
        
    }
    
    //non-staticなメソッドからはアクセスできる
    func setExperience(_ years:Int){
        self.experienceYears = years
    }
    
    //non-staticなメソッドからはstatic変数を直接アクセスできない。クラス名が必要。
    func setIsGood(_ isGood:Bool){
        Programmer.isGood = isGood
    }
}
