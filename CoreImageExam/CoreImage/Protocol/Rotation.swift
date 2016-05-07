//
// Created by daisuke iwata on 2016/05/07.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Rotation: Processable {
    
    var minRotationValue: Float { get }
    var maxRotationValue: Float { get }
    
    func rotation(rotation: Float) -> Self
    
}

extension Rotation {
    
    var minRotationValue: Float {
        return self.minValue(inputKey: "inputRotation")
    }
    
    var maxRotationValue: Float {
        return self.maxValue(inputKey: "inputRotation")
    }
    
    func rotation(rotation: Float) -> Self {
        self.filter.setValue(NSNumber.floatNumber(rotation, min: self.minRotationValue, max: self.maxRotationValue), forKey: "inputRotation")
        return self
    }
    
}
