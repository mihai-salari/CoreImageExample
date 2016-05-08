//
// Created by daisuke iwata on 2016/05/07.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class StretchCrop: Processable {
    
    let filter = CIFilter(name: "CIStretchCrop")!
    
    var minCropAmountValue: Double {
        return self.minValue(inputKey: "inputCropAmount")
    }
    
    var maxCropAmountValue: Double {
        return self.maxValue(inputKey: "inputCropAmount")
    }
    
    var minCenterStretchAmountValue: Double {
        return self.minValue(inputKey: "inputCenterStretchAmount")
    }
    
    var maxCenterStretchAmountValue: Double {
        return self.maxValue(inputKey: "inputCenterStretchAmount")
    }
    
    func size(size: CGRect) -> StretchCrop {
        self.filter.setValue(CIVector(CGRect: size), forKey: "inputSize")
        return self
    }
    
    func cropAmount(cropAmount: Double) -> StretchCrop {
        self.filter.setValue(NSNumber.doubleNumber(cropAmount, min: self.minCropAmountValue, max: self.maxCropAmountValue), forKey: "inputCropAmount")
        return self
    }
    
    func centerStretchAmount(stretchAmount: Double) -> StretchCrop {
        self.filter.setValue(NSNumber.doubleNumber(stretchAmount, min: self.minCenterStretchAmountValue, max: self.maxCenterStretchAmountValue), forKey: "inputCenterStretchAmount")
        return self
    }
    
}
