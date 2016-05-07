//
// Created by daisuke iwata on 2016/05/07.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class LightTunnel: Center, Radius, Rotation {
    
    let filter = CIFilter(name: "CILightTunnel")!
    let minRadius = 1.0 
    let maxRadius = 500.0
    let minRotation = 0.0
    let maxRotation = M_PI_2
    
}
