//
// Created by daisuke iwata on 2016/05/07.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class StretchCrop: Processable {
    
    let filter = CIFilter(name: "CIStretchCrop")!
    
    var minCropAmountValue: Float {
        return self.minValue(inputKey: "inputCropAmount")
    }
    
    var maxCropAmountValue: Float {
        return self.maxValue(inputKey: "inputCropAmount")
    }
    
    var minCenterStretchAmountValue: Float {
        return self.minValue(inputKey: "inputCenterStretchAmount")
    }
    
    var maxCenterStretchAmountValue: Float {
        return self.maxValue(inputKey: "inputCenterStretchAmount")
    }
    
    func size(size: CGRect) -> StretchCrop {
        self.filter.setValue(CIVector(CGRect: size), forKey: "inputSize")
        return self
    }
    
    func cropAmount(cropAmount: Float) -> StretchCrop {
        self.filter.setValue(NSNumber.floatNumber(cropAmount, min: self.minCropAmountValue, max: self.maxCropAmountValue), forKey: "inputCropAmount")
        return self
    }
    
    func centerStretchAmount(stretchAmount: Float) -> StretchCrop {
        self.filter.setValue(NSNumber.floatNumber(stretchAmount, min: self.minCenterStretchAmountValue, max: self.maxCenterStretchAmountValue), forKey: "inputCenterStretchAmount")
        return self
    }
    
}
