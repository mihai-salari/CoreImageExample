//
// Created by daisuke iwata on 2016/05/06.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class VignetteEffect: Center, Radius, Intensity {

    let filter = CIFilter(name: "CIVignetteEffect")!
    let minRadius = 0.0
    let maxRadius = 2000.0
    let minIntensity = -1.0
    let maxIntensity = 1.0
    
    let minFallOff: Double = 0.0
    let maxFallOff: Double = 1.0
    
    func fallOff(fallOff: Double) -> VignetteEffect {
        self.filter.setValue(NSNumber.convertDouble(fallOff, min: minFallOff, max: maxFallOff), forKey: "inputFallOff")
        return self
    }
    
}
