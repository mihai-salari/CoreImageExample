//
// Created by daisuke iwata on 2016/05/02.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation

extension NSNumber {
    
    static func convertFloat(float: Float, min: Float, max: Float) -> NSNumber {
        return NSNumber(float: self.convert(float, min: min, max: max))
    }
    
    static func convert<T: Comparable>(target: T, min: T, max: T) -> T {
        if target < min {
            return min
        }
        
        if target > max {
            return max
        }
        
        return target
    }
}