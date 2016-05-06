//
// Created by daisuke iwata on 2016/05/06.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreGraphics
import CoreImage

protocol Polynomial: ImageProcessable {
    
    func redCoefficients(x: CGFloat, y: CGFloat, z: CGFloat, w: CGFloat) -> Self
    func greenCoefficients(x: CGFloat, y: CGFloat, z: CGFloat, w: CGFloat) -> Self
    func blueCoefficients(x: CGFloat, y: CGFloat, z: CGFloat, w: CGFloat) -> Self
    
}

extension Polynomial {
    
    func redCoefficients(x: CGFloat, y: CGFloat, z: CGFloat, w: CGFloat) -> Self {
        self.filter.setValue(CIVector(x: x, y: y, z: z, w: w), forKey: "inputRedCoefficients")
        return self
    }
    
    func greenCoefficients(x: CGFloat, y: CGFloat, z: CGFloat, w: CGFloat) -> Self {
        self.filter.setValue(CIVector(x: x, y: y, z: z, w: w), forKey: "inputGreenCoefficients")
        return self
    }
    
    func blueCoefficients(x: CGFloat, y: CGFloat, z: CGFloat, w: CGFloat) -> Self {
        self.filter.setValue(CIVector(x: x, y: y, z: z, w: w), forKey: "inputBlueCoefficients")
        return self
    }
    
}
