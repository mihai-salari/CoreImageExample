//
// Created by daisuke iwata on 2016/05/07.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol AspectRatio: Processable {
    
    var minRationValue: Double { get }
    var maxRationValue: Double { get }
    
    func aspectRatio(ratio: Double) -> Self
    
}

extension AspectRatio {
    
    var minRationValue: Double {
        return self.minValue(inputKey: kCIInputAspectRatioKey)
    }
    
    var maxRationValue: Double {
        return self.maxValue(inputKey: kCIInputAspectRatioKey)
    }
    
    func aspectRatio(ratio: Double) -> Self {
        self.filter.setValue(NSNumber.doubleNumber(ratio, min: self.minRationValue, max:self.maxRationValue), forKey: kCIInputAspectRatioKey)
        return self
    }
    
}
