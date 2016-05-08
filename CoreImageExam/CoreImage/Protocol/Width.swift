//
// Created by daisuke iwata on 2016/05/07.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Width: Processable {
    
    var minWidthValue: Double { get }
    var maxWidthValue: Double { get }
    
    func width(width: Double) -> Self
    
}

extension Width {
    
    var minWidthValue: Double {
        return self.minValue(inputKey: kCIInputWidthKey)
    }
    
    var maxWidthValue: Double {
        return self.maxValue(inputKey: kCIInputWidthKey)
    }
    
    func width(width: Double) -> Self {
        self.filter.setValue(NSNumber.doubleNumber(width, min: self.minWidthValue, max: self.maxWidthValue), forKey: kCIInputWidthKey)
        return self
    }
    
}
