//
// Created by daisuke iwata on 2016/05/02.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Angle: Processable {
    
    var minAngleValue: Double { get }
    var maxAngleValue: Double { get }
    
    func angle(angle: Double) -> Self
    
}

extension Angle {
    
    var maxAngleValue: Double {
        return self.minValue(inputKey: kCIInputAngleKey)
    }
    
    var minAngleValue: Double {
        return self.maxValue(inputKey: kCIInputAngleKey)
    }
    
    func angle(angle: Double) -> Self {
        self.filter.setValue(NSNumber.doubleNumber(angle, min: self.minAngleValue, max: self.maxAngleValue), forKey: kCIInputAngleKey)
        return self
    }
    
}