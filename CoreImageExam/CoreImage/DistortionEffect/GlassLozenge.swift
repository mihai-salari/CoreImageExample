//
// Created by daisuke iwata on 2016/05/07.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class GlassLozenge: Radius, Refraction {
    
    let filter = CIFilter(name: "CIGlassLozenge")!
    let minRadius = 0.0
    let maxRadius = 1000.0
    let minRefraction = 0.0
    let maxRefraction = 5.0
    
    func point0(x: CGFloat, y: CGFloat) -> GlassLozenge {
        self.filter.setValue(CIVector(x: x, y: y), forKey: "inputPoint0")
        return self
    }
    
    func point1(x: CGFloat, y: CGFloat) -> GlassLozenge {
        self.filter.setValue(CIVector(x: x, y: y), forKey: "inputPoint1")
        return self
    }
    
}
