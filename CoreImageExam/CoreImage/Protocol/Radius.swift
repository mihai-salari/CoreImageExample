//
// Created by daisuke iwata on 2016/05/02.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Radius: Processable {
    
    var minRadiusValue: Double { get }
    var maxRadiusValue: Double { get }
    
    func radius(radius: Double) -> Self
    
}

extension Radius {
    
    var minRadiusValue: Double {
        return self.minValue(inputKey: kCIInputRadiusKey)
    }
    
    var maxRadiusValue: Double {
        return self.maxValue(inputKey: kCIInputRadiusKey)
    }
    
    func radius(radius: Double) -> Self {
        self.filter.setValue(NSNumber.doubleNumber(radius, min: self.minRadiusValue, max: self.maxRadiusValue), forKey: kCIInputRadiusKey)
        return self
    }
    
}