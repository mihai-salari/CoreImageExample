//
// Created by daisuke iwata on 2016/05/09.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class CMYKHalftone: Angle, Center, Sharpness, Width {
    
    let filter = CIFilter(name: "CICMYKHalftone")!
    
    var minGCRValue: Double {
        return self.minValue(inputKey: "inputGCR")
    }
    
    var maxGCRValue: Double {
        return self.maxValue(inputKey: "inputGCR")
    }
    
    var minUCRValue: Double {
        return self.minValue(inputKey: "inputUCR")
    }
    
    var maxUCRValue: Double {
        return self.maxValue(inputKey: "inputUCR")
    }
    
    func GCR(gcr: Double) -> CMYKHalftone {
        self.filter.setValue(NSNumber.doubleNumber(gcr, min: self.minGCRValue, max: self.maxGCRValue), forKey: "inputGCR")
        return self
    }
    
    func UCR(ucr: Double) -> CMYKHalftone {
        self.filter.setValue(NSNumber.doubleNumber(ucr, min: self.minUCRValue, max: self.maxGCRValue), forKey: "inputUCR")
        return self
    }
    
}
