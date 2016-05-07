//
// Created by daisuke iwata on 2016/05/06.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Scale: Processable {
    
    var minScaleValue: Float { get }
    var maxScaleValue: Float { get }
    
    func scale(scale: Float) -> Self
    
}

extension Scale {
    
    var minScaleValue: Float {
        return self.minValue(inputKey: kCIInputScaleKey)
    }
    
    var maxScaleValue: Float {
        return self.maxValue(inputKey: kCIInputScaleKey)
    }
    
    func scale(scale: Float) -> Self {
        self.filter.setValue(NSNumber.floatNumber(scale, min: self.minScaleValue, max: self.maxScaleValue), forKey: kCIInputScaleKey)
        return self
    }
    
}
