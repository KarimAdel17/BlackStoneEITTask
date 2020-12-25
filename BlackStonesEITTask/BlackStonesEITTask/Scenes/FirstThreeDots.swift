//
//  FirstThreeDots.swift
//  BlackStonesEITTask
//
//  Created by Karim on 12/25/20.
//  Copyright © 2020 Karim. All rights reserved.
//

import Foundation

extension MainVC {
    
    func returnResult() -> Double {
        return ((2.25 + 4.50) / 1.25) * 5
    }
    
    func checkAnagrams(s1: String, s2: String) {
        
        if Set(s1) == Set(s2) {
            print("anagrams")
        } else {
            print("not anagrams")
        }
    }
    
    func Fibonacci1(num: Int) -> Int {
        if num <= 1 {
            return num
        }
        return Fibonacci1(num: num-1) + Fibonacci1(num: num-2)
    }
    
    func Fibonacci2(num: Int) -> Int {
        var f = [0, 1]
        
        for i in 2...num+1 {
            f.append(f[i-1]+f[i-2])
        }
        
        return f[num]
    }
}
