//
// Created by daisuke iwata on 2016/05/07.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Width: Processable {
    
    var minWidthValue: Float { get }
    var maxWidthValue: Float { get }
    
    func width(width: Float) -> Self
    
}

extension Width {
    
    var minWidthValue: Float {
        return self.minValue(inputKey: kCIInputWidthKey)
    }
    
    var maxWidthValue: Float {
        return self.maxValue(inputKey: kCIInputWidthKey)
    }
    
    func width(width: Float) -> Self {
        self.filter.setValue(NSNumber.convertFloat(width, min: self.minWidthValue, max: self.maxWidthValue), forKey: kCIInputWidthKey)
        return self
    }
    
}
