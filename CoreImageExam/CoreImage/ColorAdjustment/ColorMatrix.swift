//
// Created by daisuke iwata on 2016/05/03.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class ColorMatrix: ImageProcessable {
    
    let filter = CIFilter(name: "CIColorMatrix")!
    
    func biasVector(x: CGFloat, y: CGFloat, z: CGFloat, w: CGFloat) -> ColorMatrix {
        self.filter.setValue(CIVector(x: x, y: y, z: z, w: w), forKey: "inputBiasVector")
        return self
    }
    
    func RVector(x: CGFloat, y: CGFloat, z: CGFloat, w: CGFloat) -> ColorMatrix {
        self.filter.setValue(CIVector(x: x, y: y, z: z, w: w), forKey: "inputRVector")
        return self
    }
    
    func GVector(x: CGFloat, y: CGFloat, z: CGFloat, w: CGFloat) -> ColorMatrix {
        self.filter.setValue(CIVector(x: x, y: y, z: z, w: w), forKey: "inputGVector")
        return self
    }
    
    func BVector(x: CGFloat, y: CGFloat, z: CGFloat, w: CGFloat) -> ColorMatrix {
        self.filter.setValue(CIVector(x: x, y: y, z: z, w: w), forKey: "inputBVector")
        return self
    }
    
    func AVector(x: CGFloat, y: CGFloat, z: CGFloat, w: CGFloat) -> ColorMatrix {
        self.filter.setValue(CIVector(x: x, y: y, z: z, w: w), forKey: "inputAVector")
        return self
    }
    
}
