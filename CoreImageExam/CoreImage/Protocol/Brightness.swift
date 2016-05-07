//
// Created by daisuke iwata on 2016/05/02.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Brightness: Processable {
    
    var minBrightnessValue: Float { get }
    var maxBrightnessValue: Float { get }
    
    func brightness(brightness: Float) -> Self
    
}

extension Brightness {
    
    var minBrightnessValue: Float {
        return self.minValue(inputKey: kCIInputBrightnessKey)
    }
    
    var maxBrightnessValue: Float {
        return self.maxValue(inputKey: kCIInputBrightnessKey)
    }
    
    func brightness(brightness: Float) -> Self {
        self.filter.setValue(NSNumber.convertFloat(brightness, min: self.minBrightnessValue, max: self.maxBrightnessValue), forKey: kCIInputBrightnessKey)
        return self
    }
    
}