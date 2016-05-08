//
// Created by daisuke iwata on 2016/05/07.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Rotation: Processable {
    
    var minRotationValue: Double { get }
    var maxRotationValue: Double { get }
    
    func rotation(rotation: Double) -> Self
    
}

extension Rotation {
    
    var minRotationValue: Double {
        return self.minValue(inputKey: "inputRotation")
    }
    
    var maxRotationValue: Double {
        return self.maxValue(inputKey: "inputRotation")
    }
    
    func rotation(rotation: Double) -> Self {
        self.filter.setValue(NSNumber.doubleNumber(rotation, min: self.minRotationValue, max: self.maxRotationValue), forKey: "inputRotation")
        return self
    }
    
}
