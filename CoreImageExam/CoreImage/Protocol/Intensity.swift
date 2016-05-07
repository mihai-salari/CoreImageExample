//
// Created by daisuke iwata on 2016/05/06.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Intensity: Processable {
    
    var minIntensityValue: Float { get }
    var maxIntensityValue: Float { get }
    
    func intensity(intensity: Float) -> Self
    
}

extension Intensity {
    
    var minIntensityValue: Float {
        return self.minValue(inputKey: kCIInputIntensityKey)
    }
    
    var maxIntensityValue: Float {
        return self.maxValue(inputKey: kCIInputIntensityKey)
    }
    
    func intensity(intensity: Float) -> Self {
        self.filter.setValue(NSNumber.floatNumber(intensity, min: self.minIntensityValue, max: self.maxIntensityValue), forKey: kCIInputIntensityKey)
        return self
    }
    
}