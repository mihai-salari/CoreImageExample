//
// Created by daisuke iwata on 2016/05/02.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol NoiseLevel: Processable {
    
    var minNoiseValue: Double { get }
    var maxNoiseValue: Double { get }
    
    func noise(noise: Double) -> Self
    
}

extension NoiseLevel {
    
    var minNoiseValue: Double {
        return self.minValue(inputKey: "inputNoiseLevel")
    }
    
    var maxNoiseValue: Double {
        return self.maxValue(inputKey: "inputNoiseLevel")
    }
    
    func noise(noise: Double) -> Self {
        self.filter.setValue(NSNumber.doubleNumber(noise, min: self.minNoiseValue, max: self.maxNoiseValue), forKey: "inputNoiseLevel")
        return self
    }
    
}
