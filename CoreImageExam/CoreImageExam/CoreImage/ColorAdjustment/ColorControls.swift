//
// Created by daisuke iwata on 2016/05/02.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class ColorControls: Brightness, Contrast, Saturation {
    
    let filter = CIFilter(name: "CIColorControls")!
    let minBrightness = -1.0
    let maxBrightness = 1.0
    let minContrast = 0.0
    let maxContrast = 4.0
    let minSaturation = 0.0
    let maxSaturation = 2.0
    
}
