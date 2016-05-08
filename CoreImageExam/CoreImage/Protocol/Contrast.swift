//
// Created by daisuke iwata on 2016/05/02.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Contrast: Processable {
    
    var minContrastValue: Double { get }
    var maxContrastValue: Double { get }
    
    func contrast(contrast: Double) -> Self
    
}

extension Contrast {
    
    var minContrastValue: Double {
        return self.minValue(inputKey: kCIInputContrastKey)
    }
    
    var maxContrastValue: Double {
        return self.minValue(inputKey: kCIInputContrastKey)
    }
    
    func contrast(contrast: Double) -> Self {
        self.filter.setValue(NSNumber.doubleNumber(contrast, min: self.minContrastValue, max: self.maxContrastValue), forKey: kCIInputContrastKey)
        return self
    }
    
}