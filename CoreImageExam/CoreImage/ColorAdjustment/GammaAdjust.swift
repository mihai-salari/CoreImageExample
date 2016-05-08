//
// Created by daisuke iwata on 2016/05/06.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class GammaAdjust: Processable {
    
    let filter = CIFilter(name: "GammaAdjust")!

    var minPowerValue: Double {
        return self.minValue(inputKey: "inputPower")
    }
    
    var maxPowerValue: Double {
        return self.maxValue(inputKey: "inputPower")
    }
    
    func power(power: Double) -> GammaAdjust {
        self.filter.setValue(NSNumber.doubleNumber(power, min: self.minPowerValue, max: self.maxPowerValue), forKey: "inputPower")
        return self
    }
    
}
