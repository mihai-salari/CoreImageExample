//
// Created by daisuke iwata on 2016/05/06.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class Vignette: Radius, Intensity {
    
    let filter = CIFilter(name: "CIVignette")!
    let minRadius = 0.0
    let maxRadius = 2.0
    let minIntensity = -1.0
    let maxIntensity = 1.0
    
}
