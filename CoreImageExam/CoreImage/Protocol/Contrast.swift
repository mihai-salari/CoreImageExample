//
// Created by daisuke iwata on 2016/05/02.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Contrast: Processable {
    
    var minContrastValue: Float { get }
    var maxContrastValue: Float { get }
    
    func contrast(contrast: Float) -> Self
    
}

extension Contrast {
    
    var minContrastValue: Float {
        return self.minValue(inputKey: kCIInputContrastKey)
    }
    
    var maxContrastValue: Float {
        return self.minValue(inputKey: kCIInputContrastKey)
    }
    
    func contrast(contrast: Float) -> Self {
        self.filter.setValue(NSNumber.convertFloat(contrast, min: self.minContrastValue, max: self.maxContrastValue), forKey: kCIInputContrastKey)
        return self
    }
    
}