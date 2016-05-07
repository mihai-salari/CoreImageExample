//
// Created by daisuke iwata on 2016/05/02.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Sharpness: Processable {
    
    var minSharpnessValue: Float { get }
    var maxSharpnessValue: Float { get }
    
    func sharpness(sharpness: Float) -> Self
    
}

extension Sharpness {
    
    var minSharpnessValue: Float {
        return self.minValue(inputKey: kCIInputSharpnessKey)
    }
    
    var maxSharpnessValue: Float {
        return self.maxValue(inputKey: kCIInputSharpnessKey)
    }
    
    func sharpness(sharpness: Float) -> Self {
        self.filter.setValue(NSNumber.floatNumber(sharpness, min: self.minSharpnessValue, max: self.maxSharpnessValue), forKey: kCIInputSharpnessKey)
        return self;
    }
    
}
