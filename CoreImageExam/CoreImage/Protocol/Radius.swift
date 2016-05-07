//
// Created by daisuke iwata on 2016/05/02.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Radius: Processable {
    
    var minRadiusValue: Float { get }
    var maxRadiusValue: Float { get }
    
    func radius(radius: Float) -> Self
    
}

extension Radius {
    
    var minRadiusValue: Float {
        return self.minValue(inputKey: kCIInputRadiusKey)
    }
    
    var maxRadiusValue: Float {
        return self.maxValue(inputKey: kCIInputRadiusKey)
    }
    
    func radius(radius: Float) -> Self {
        self.filter.setValue(NSNumber.floatNumber(radius, min: self.minRadiusValue, max: self.maxRadiusValue), forKey: kCIInputRadiusKey)
        return self
    }
    
}