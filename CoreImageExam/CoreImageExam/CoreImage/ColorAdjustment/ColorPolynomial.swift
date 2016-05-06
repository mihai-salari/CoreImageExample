//
// Created by daisuke iwata on 2016/05/03.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class ColorPolynomial: ImageProcessable {
    
    let filter = CIFilter(name: "CIColorPolynomial")!
    
    func redCoefficient(x: CGFloat, y: CGFloat, z: CGFloat, w: CGFloat) -> ColorPolynomial {
        self.filter.setValue(CIVector(x: x, y: y, z: z, w: w), forKey: "inputRedCoefficient")
        return self
    }
    
    func greenCoefficient(x: CGFloat, y: CGFloat, z: CGFloat, w: CGFloat) -> ColorPolynomial {
        self.filter.setValue(CIVector(x: x, y: y, z: z, w: w), forKey: "inputGreenCoefficient")
        return self
    }
    
    func blueCoefficient(x: CGFloat, y: CGFloat, z: CGFloat, w: CGFloat) -> ColorPolynomial {
        self.filter.setValue(CIVector(x: x, y: y, z: z, w: w), forKey: "inputBlueCoefficient")
        return self
    }
    
    func alphaCoefficient(x: CGFloat, y: CGFloat, z: CGFloat, w: CGFloat) -> ColorPolynomial {
        self.filter.setValue(CIVector(x: x, y: y, z: z, w: w), forKey: "inputAlphaCoefficient")
        return self
    }
    
}
