//
// Created by daisuke iwata on 2016/05/06.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class CircularWrap: Angle, Center, Radius {
    
    let filter = CIFilter(name: "CICircularWrap")!
    let minAngle = -M_PI
    let maxAngle = M_PI
    let minRadius = 0.0
    let maxRadius = 600.0
    
}
