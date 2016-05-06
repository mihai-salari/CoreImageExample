//
// Created by daisuke iwata on 2016/05/03.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Saturation: ImageProcessable {
    
    var minSaturation: Double { get }
    var maxSaturation: Double { get }
    
    func saturation(saturation: Double) -> Self
    
}

extension Saturation {
    
    func saturation(saturation: Double) -> Self {
        self.filter.setValue(NSNumber.convertDouble(saturation, min: minSaturation, max: maxSaturation), forKey: kCIInputSaturationKey)
        return self
    }
    
}
