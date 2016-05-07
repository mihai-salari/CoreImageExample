//
// Created by daisuke iwata on 2016/05/06.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class CIGammaAdjust: Processable {
    
    let filter = CIFilter(name: "CIGammaAdjust")!
    let minPower = 0.25
    let maxPower = 4.0
    
    func power(power: Double) -> CIGammaAdjust {
        self.filter.setValue(NSNumber.convertDouble(power, min: minPower, max: maxPower), forKey: "inputPower")
        return self
    }
    
}
