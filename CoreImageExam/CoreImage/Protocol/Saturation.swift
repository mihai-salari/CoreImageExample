//
// Created by daisuke iwata on 2016/05/03.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Saturation: Processable {
    
    var minSaturationValue: Float { get }
    var maxSaturationValue: Float { get }
    
    func saturation(saturation: Float) -> Self
    
}

extension Saturation {
    
    var minSaturationValue: Float {
        return self.minValue(inputKey: kCIInputSaturationKey)
    }
    
    var maxSaturationValue: Float {
        return self.maxValue(inputKey: kCIInputSaturationKey)
    }
    
    func saturation(saturation: Float) -> Self {
        self.filter.setValue(NSNumber.convertFloat(saturation, min: self.minSaturationValue, max: self.maxSaturationValue), forKey: kCIInputSaturationKey)
        return self
    }
    
}
