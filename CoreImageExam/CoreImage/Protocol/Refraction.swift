//
// Created by daisuke iwata on 2016/05/07.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Refraction: Processable {
    
    var minRefractionValue: Double { get }
    var maxRefractionValue: Double { get }
    
    func refraction(refraction: Double) -> Self
    
}

extension Refraction {
    
    var minRefractionValue: Double {
        return self.minValue(inputKey: kCIInputRefractionKey)
    }
    
    var maxRefractionValue: Double {
        return self.maxValue(inputKey: kCIInputRefractionKey)
    }
    
    func refraction(refraction: Double) -> Self {
        self.filter.setValue(NSNumber.doubleNumber(refraction, min: self.minRefractionValue, max: self.maxRefractionValue), forKey: kCIInputRefractionKey)
        return self
    }
    
}
