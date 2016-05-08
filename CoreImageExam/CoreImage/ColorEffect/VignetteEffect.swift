//
// Created by daisuke iwata on 2016/05/06.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class VignetteEffect: Center, Radius, Intensity {

    let filter = CIFilter(name: "CIVignetteEffect")!
    
    var minFallOffValue: Double {
        return self.minValue(inputKey: "inputFallOff")
    }
    
    var maxFallOffValue: Double {
        return self.maxValue(inputKey: "inputFallOff")
    }
    
    func fallOff(fallOff: Double) -> VignetteEffect {
        self.filter.setValue(NSNumber.doubleNumber(fallOff, min: self.minFallOffValue, max: self.maxFallOffValue), forKey: "inputFallOff")
        return self
    }
    
}
