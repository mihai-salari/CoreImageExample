//
// Created by daisuke iwata on 2016/05/07.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class SmoothLinearGradient: GradientColor {
    
    let filter = CIFilter(name: "CISmoothLinearGradient")!
    
    func point0(point: CGPoint) -> SmoothLinearGradient {
        self.filter.setValue(CIVector(CGPoint: point), forKey: "inputPoint0")
        return self
    }
    
    func point1(point: CGPoint) -> SmoothLinearGradient {
        self.filter.setValue(CIVector(CGPoint: point), forKey: "inputPoint1")
        return self
    }
    
}
