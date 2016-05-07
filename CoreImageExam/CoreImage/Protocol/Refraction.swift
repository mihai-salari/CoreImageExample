//
// Created by daisuke iwata on 2016/05/07.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Refraction: Processable {
    
    var minRefractionValue: Float { get }
    var maxRefractionValue: Float { get }
    
    func refraction(refraction: Float) -> Self
    
}

extension Refraction {
    
    var minRefractionValue: Float {
        return self.minValue(inputKey: kCIInputRefractionKey)
    }
    
    var maxRefractionValue: Float {
        return self.maxValue(inputKey: kCIInputRefractionKey)
    }
    
    func refraction(refraction: Float) -> Self {
        self.filter.setValue(NSNumber.floatNumber(refraction, min: self.minRefractionValue, max: self.maxRefractionValue), forKey: kCIInputRefractionKey)
        return self
    }
    
}
