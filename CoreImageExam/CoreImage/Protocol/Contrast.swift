//
// Created by daisuke iwata on 2016/05/02.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Contrast: Processable {
    
    var minContrast: Double { get }
    var maxContrast: Double { get }
    
    func contrast(contrast: Double) -> Self
    
}

extension Contrast {
    
    func contrast(contrast: Double) -> Self {
        self.filter.setValue(NSNumber.convertDouble(contrast, min: minContrast, max: maxContrast), forKey: kCIInputContrastKey)
        return self
    }
    
}