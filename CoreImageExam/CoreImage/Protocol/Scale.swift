//
// Created by daisuke iwata on 2016/05/06.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Scale: Processable {
    
    var minScale: Double { get }
    var maxScale: Double { get }
    
    func scale(scale: Double) -> Self
    
}

extension Scale {
    
    func scale(scale: Double) -> Self {
        self.filter.setValue(NSNumber.convertDouble(scale, min: minScale, max: maxScale), forKey: kCIInputScaleKey)
        return self
    }
    
}
