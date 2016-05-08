//
// Created by daisuke iwata on 2016/05/09.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Bias: Processable {
    
    var minBiasValue: Double { get }
    var maxBiasValue: Double { get }
    
    func bias(bias: Double) -> Self
    
}

extension Bias {
    
    var minBiasValue: Double {
        return self.minValue(inputKey: kCIInputBiasKey)
    }
    
    var maxBiasValue: Double {
        return self.maxValue(inputKey: kCIInputBiasKey)
    }
    
    func bias(bias: Double) -> Self {
        self.filter.setValue(NSNumber.doubleNumber(bias, min: self.minBiasValue, max: self.maxBiasValue), forKey: kCIInputBiasKey)
        return self
    }
    
}
