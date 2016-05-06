//
// Created by daisuke iwata on 2016/05/02.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class MotionBlur: Radius, Angle {
    
    let filter = CIFilter(name: "CIMotionBlur")!
    let minRadius = 0
    let maxRadius = 100
    
}
