//
// Created by daisuke iwata on 2016/05/06.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Intensity: Processable {
    
    var minIntensityValue: Double { get }
    var maxIntensityValue: Double { get }
    
    func intensity(intensity: Double) -> Self
    
}

extension Intensity {
    
    var minIntensityValue: Double {
        return self.minValue(inputKey: kCIInputIntensityKey)
    }
    
    var maxIntensityValue: Double {
        return self.maxValue(inputKey: kCIInputIntensityKey)
    }
    
    func intensity(intensity: Double) -> Self {
        self.filter.setValue(NSNumber.doubleNumber(intensity, min: self.minIntensityValue, max: self.maxIntensityValue), forKey: kCIInputIntensityKey)
        return self
    }
    
}