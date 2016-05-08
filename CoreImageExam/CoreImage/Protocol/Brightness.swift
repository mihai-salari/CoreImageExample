//
// Created by daisuke iwata on 2016/05/02.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Brightness: Processable {
    
    var minBrightnessValue: Double { get }
    var maxBrightnessValue: Double { get }
    
    func brightness(brightness: Double) -> Self
    
}

extension Brightness {
    
    var minBrightnessValue: Double {
        return self.minValue(inputKey: kCIInputBrightnessKey)
    }
    
    var maxBrightnessValue: Double {
        return self.maxValue(inputKey: kCIInputBrightnessKey)
    }
    
    func brightness(brightness: Double) -> Self {
        self.filter.setValue(NSNumber.doubleNumber(brightness, min: self.minBrightnessValue, max: self.maxBrightnessValue), forKey: kCIInputBrightnessKey)
        return self
    }
    
}