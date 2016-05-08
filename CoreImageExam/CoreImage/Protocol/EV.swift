//
// Created by daisuke iwata on 2016/05/06.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol EV: Processable {
    
    var minEvValue: Double { get }
    var maxEvValue: Double { get }
    
    func EV(ev: Double) -> Self
    
}

extension EV {
    
    var minEvValue: Double {
        return self.minValue(inputKey: kCIInputEVKey)
    }
    
    var maxEvValue: Double {
        return self.maxValue(inputKey: kCIInputEVKey)
    }
    
    func EV(ev: Double) -> Self {
        self.filter.setValue(NSNumber.doubleNumber(ev, min: self.minEvValue, max: self.maxEvValue), forKey: kCIInputEVKey)
        return self
    }
    
}
