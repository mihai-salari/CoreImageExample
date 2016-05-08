//
// Created by daisuke iwata on 2016/05/02.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Sharpness: Processable {
    
    var minSharpnessValue: Double { get }
    var maxSharpnessValue: Double { get }
    
    func sharpness(sharpness: Double) -> Self
    
}

extension Sharpness {
    
    var minSharpnessValue: Double {
        return self.minValue(inputKey: kCIInputSharpnessKey)
    }
    
    var maxSharpnessValue: Double {
        return self.maxValue(inputKey: kCIInputSharpnessKey)
    }
    
    func sharpness(sharpness: Double) -> Self {
        self.filter.setValue(NSNumber.doubleNumber(sharpness, min: self.minSharpnessValue, max: self.maxSharpnessValue), forKey: kCIInputSharpnessKey)
        return self;
    }
    
}
