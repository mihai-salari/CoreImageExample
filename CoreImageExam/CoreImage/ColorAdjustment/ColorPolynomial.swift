//
// Created by daisuke iwata on 2016/05/03.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class ColorPolynomial: Polynomial {
    
    let filter = CIFilter(name: "CIColorPolynomial")!
    
    func alphaCoefficients(x: CGFloat, y: CGFloat, z: CGFloat, w: CGFloat) -> ColorPolynomial {
        self.filter.setValue(CIVector(x: x, y: y, z: z, w: w), forKey: "inputAlphaCoefficients")
        return self
    }
    
}
