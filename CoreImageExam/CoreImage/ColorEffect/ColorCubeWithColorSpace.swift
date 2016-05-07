//
// Created by daisuke iwata on 2016/05/06.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreGraphics
import CoreImage

final class ColorCubeWithColorSpace: Cube {
    
    let filter = CIFilter(name: "CIColorCubeWithColorSpace")!
    
    func colorSpace(colorSpace: CGColorSpaceRef) -> ColorCubeWithColorSpace {
        self.filter.setValue(colorSpace, forKey: "inputColorSpace")
        return self
    }
    
}
