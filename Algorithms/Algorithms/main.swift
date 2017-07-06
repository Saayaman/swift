//
//  main.swift
//  Algorithms
//
//  Created by ayako_sayama on 2017-06-26.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import Foundation


let stringPlay = StringsPlay()
stringPlay.playit()


let array = ["Mike","Betty","Joe","Heather","Cathy","Malcom"]
ArrayPlay().play(array)


print("\(String(describing: twoSum(arrayN, target)))")

print(reverse(1534236469))

//3: Paildrone Algorithm
print("PailnDrome:\(isPalindrome(1234321))")
print("PailnDrome_str:\(isPalindrome_str(1234321))")


print("RomantoInt: \(romanToInt("MMMMXCVI"))")
print("CommonPrefix: \(longestCommonPrefix(["aa", "aaa", "aa"]))")

print("CommonPrefix: \(longestCommonPrefix(["relife", "retailer", "regard"]))")


print("isValid: \(isValid("{}[]"))")
print("isValid: \(isValid("(["))")
print("isValid: \(isValid("[}{)"))")
print("isValid: \(isValid("([])"))")
