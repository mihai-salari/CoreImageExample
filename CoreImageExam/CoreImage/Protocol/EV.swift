//
// Created by daisuke iwata on 2016/05/06.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol EV: Processable {
    
    var minEvValue: Float { get }
    var maxEvValue: Float { get }
    
    func EV(ev: Float) -> Self
    
}

extension EV {
    
    var minEvValue: Float {
        return self.minValue(inputKey: kCIInputEVKey)
    }
    
    var maxEvValue: Float {
        return self.maxValue(inputKey: kCIInputEVKey)
    }
    
    func EV(ev: Float) -> Self {
        self.filter.setValue(NSNumber.convertFloat(ev, min: self.minEvValue, max: self.maxEvValue), forKey: kCIInputEVKey)
        return self
    }
    
}
