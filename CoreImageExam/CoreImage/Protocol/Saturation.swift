//
// Created by daisuke iwata on 2016/05/03.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Saturation: Processable {
    
    var minSaturationValue: Double { get }
    var maxSaturationValue: Double { get }
    
    func saturation(saturation: Double) -> Self
    
}

extension Saturation {
    
    var minSaturationValue: Double {
        return self.minValue(inputKey: kCIInputSaturationKey)
    }
    
    var maxSaturationValue: Double {
        return self.maxValue(inputKey: kCIInputSaturationKey)
    }
    
    func saturation(saturation: Double) -> Self {
        self.filter.setValue(NSNumber.doubleNumber(saturation, min: self.minSaturationValue, max: self.maxSaturationValue), forKey: kCIInputSaturationKey)
        return self
    }
    
}
