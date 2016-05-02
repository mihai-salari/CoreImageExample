//
// Created by daisuke iwata on 2016/05/02.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation

protocol Radius {
    
    var minRadius: Int { get }
    var maxRadius: Int { get }
    
    func radius(radius: Int) -> Self
    func convertNumber(radius: Int) -> NSNumber
}

extension Radius {
    
    func convertNumber(radius: Int) -> NSNumber {
        var param = radius
        if param > maxRadius {
            param = maxRadius
        }
        
        if param < minRadius {
            param = minRadius
        }
        
        return NSNumber(long: param)
    }
    
}