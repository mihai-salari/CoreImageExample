//
// Created by daisuke iwata on 2016/05/06.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class ColorCube: Cube {
    
    let filter = CIFilter(name: "CIColorCube")!
    let minDimension = 2.0
    let maxDimension = 64.0
    
}
