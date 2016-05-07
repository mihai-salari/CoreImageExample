//
// Created by daisuke iwata on 2016/05/06.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class BumpDistortion: Center, Radius, Scale {
    
    let filter = CIFilter(name: "CIBumpDistortion")!
    let minRadius = 0.0
    let maxRadius = 600.0
    let minScale = -1.0
    let maxScale = 1.0
    
}
