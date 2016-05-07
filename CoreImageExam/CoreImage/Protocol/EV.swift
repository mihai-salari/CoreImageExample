//
// Created by daisuke iwata on 2016/05/06.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol EV: Processable {
    
    var minEV: Double { get }
    var maxEV: Double { get }
    
    func EV(ev: Double) -> Self
    
}

extension EV {
    
    func EV(ev: Double) -> Self {
        self.filter.setValue(NSNumber.convertDouble(ev, min: minEV, max: maxEV), forKey: kCIInputEVKey)
        return self
    }
    
}
