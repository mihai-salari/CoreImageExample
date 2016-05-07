//
// Created by daisuke iwata on 2016/05/02.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol NoiseLevel: Processable {
    
    var minNoise: Double { get }
    var maxNoise: Double { get }
    
    func noise(noise: Double) -> Self
    
}

extension NoiseLevel {
    
    func noise(noise: Double) -> Self {
        self.filter.setValue(NSNumber.convertDouble(noise, min: minNoise, max: maxNoise), forKey: "inputNoiseLevel")
        return self
    }
    
}
