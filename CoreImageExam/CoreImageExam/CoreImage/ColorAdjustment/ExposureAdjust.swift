//
// Created by daisuke iwata on 2016/05/03.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class ExposureAdjust: EV {
    
    let filter = CIFilter(name: "CIExposureAdjust")!
    let minEV = -10.0
    let maxEV = 10.0
    
}
