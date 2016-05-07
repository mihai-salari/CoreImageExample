//
// Created by daisuke iwata on 2016/05/02.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Angle: Processable {
    
    var minAngleValue: Float { get }
    var maxAngleValue: Float { get }
    
    func angle(angle: Float) -> Self
    
}

extension Angle {
    
    var maxAngleValue: Float {
        return self.minValue(inputKey: kCIInputAngleKey)
    }
    
    var minAngleValue: Float {
        return self.maxValue(inputKey: kCIInputAngleKey)
    }
    
    func angle(angle: Float) -> Self {
        self.filter.setValue(NSNumber.floatNumber(angle, min: self.minAngleValue, max: self.maxAngleValue), forKey: kCIInputAngleKey)
        return self
    }
    
}