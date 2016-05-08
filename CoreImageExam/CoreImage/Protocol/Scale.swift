//
// Created by daisuke iwata on 2016/05/06.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Scale: Processable {
    
    var minScaleValue: Double { get }
    var maxScaleValue: Double { get }
    
    func scale(scale: Double) -> Self
    
}

extension Scale {
    
    var minScaleValue: Double {
        return self.minValue(inputKey: kCIInputScaleKey)
    }
    
    var maxScaleValue: Double {
        return self.maxValue(inputKey: kCIInputScaleKey)
    }
    
    func scale(scale: Double) -> Self {
        self.filter.setValue(NSNumber.doubleNumber(scale, min: self.minScaleValue, max: self.maxScaleValue), forKey: kCIInputScaleKey)
        return self
    }
    
}
