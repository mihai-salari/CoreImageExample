//
// Created by daisuke iwata on 2016/05/09.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class CMYKHalftone: Angle, Center, Sharpness, Width {
    
    let filter = CIFilter(name: "CICMYKHalftone")!
    
    var minGCRValue: Float {
        return self.minValue(inputKey: "inputGCR")
    }
    
    var maxGCRValue: Float {
        return self.maxValue(inputKey: "inputGCR")
    }
    
    var minUCRValue: Float {
        return self.minValue(inputKey: "inputUCR")
    }
    
    var maxUCRValue: Float {
        return self.maxValue(inputKey: "inputUCR")
    }
    
    func GCR(gcr: Float) -> CMYKHalftone {
        self.filter.setValue(NSNumber.floatNumber(gcr, min: minGCRValue, max: maxGCRValue), forKey: "inputGCR")
        return self
    }
    
    func UCR(ucr: Float) -> CMYKHalftone {
        self.filter.setValue(NSNumber.floatNumber(ucr, min: minUCRValue, max: maxGCRValue), forKey: "inputUCR")
        return self
    }
    
}
