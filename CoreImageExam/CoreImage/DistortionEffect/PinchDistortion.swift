//
// Created by daisuke iwata on 2016/05/07.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class PinchDistortion: Center, Radius, Scale {
    
    let filter = CIFilter(name: "CIPinchDistortion")!
    let minRadius = 0.0
    let maxRadius = 1000.0
    let minScale = 0.0
    let maxScale = 2.0
    
}
