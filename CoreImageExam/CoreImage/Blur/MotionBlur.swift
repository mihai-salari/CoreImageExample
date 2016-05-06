//
// Created by daisuke iwata on 2016/05/02.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class MotionBlur: Angle, Radius {
    
    let filter = CIFilter(name: "CIMotionBlur")!
    let minAngle = -M_PI
    let maxAngle = M_PI
    let minRadius = 0.0
    let maxRadius = 100.0
    
}
