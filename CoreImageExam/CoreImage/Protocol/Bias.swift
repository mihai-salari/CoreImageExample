//
// Created by daisuke iwata on 2016/05/09.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Bias: Processable {
    
    var minBiasValue: Float { get }
    var maxBiasValue: Float { get }
    
    func bias(bias: Float) -> Self
    
}

extension Bias {
    
    var minBiasValue: Float {
        return self.minValue(inputKey: kCIInputBiasKey)
    }
    
    var maxBiasValue: Float {
        return self.maxValue(inputKey: kCIInputBiasKey)
    }
    
    func bias(bias: Float) -> Self {
        self.filter.setValue(NSNumber.floatNumber(bias, min: self.minBiasValue, max: self.maxBiasValue), forKey: kCIInputBiasKey)
        return self
    }
    
}
