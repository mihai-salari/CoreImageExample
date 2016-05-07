//
// Created by daisuke iwata on 2016/05/07.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol AspectRatio: Processable {
    
    var minRationValue: Float { get }
    var maxRationValue: Float { get }
    
    func aspectRatio(ratio: Float) -> Self
    
}

extension AspectRatio {
    
    var minRationValue: Float {
        return self.minValue(inputKey: kCIInputAspectRatioKey)
    }
    
    var maxRationValue: Float {
        return self.maxValue(inputKey: kCIInputAspectRatioKey)
    }
    
    func aspectRatio(ratio: Float) -> Self {
        self.filter.setValue(NSNumber.floatNumber(ratio, min: self.minRationValue, max:self.maxRationValue), forKey: kCIInputAspectRatioKey)
        return self
    }
    
}
