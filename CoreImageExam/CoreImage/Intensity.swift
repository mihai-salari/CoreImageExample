//
// Created by daisuke iwata on 2016/05/06.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Intensity: ImageProcessable {
    
    var minIntensity: Double { get }
    var maxIntensity: Double { get }
    
    func intensity(intensity: Double) -> Self
    
}

extension Intensity {
    
    func intensity(intensity: Double) -> Self {
        self.filter.setValue(NSNumber.convertDouble(intensity, min: minIntensity, max: maxIntensity), forKey: kCIInputIntensityKey)
        return self
    }
    
}