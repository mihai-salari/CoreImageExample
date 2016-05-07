//
// Created by daisuke iwata on 2016/05/02.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol NoiseLevel: Processable {
    
    var minNoiseValue: Float { get }
    var maxNoiseValue: Float { get }
    
    func noise(noise: Float) -> Self
    
}

extension NoiseLevel {
    
    var minNoiseValue: Float {
        return self.minValue(inputKey: "inputNoiseLevel")
    }
    
    var maxNoiseValue: Float {
        return self.maxValue(inputKey: "inputNoiseLevel")
    }
    
    func noise(noise: Float) -> Self {
        self.filter.setValue(NSNumber.convertFloat(noise, min: self.minNoiseValue, max: self.maxNoiseValue), forKey: "inputNoiseLevel")
        return self
    }
    
}
