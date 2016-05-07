//
// Created by daisuke iwata on 2016/05/08.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class HistogramDisplayFilter: Processable {
    
    let filter = CIFilter(name: "CIHistogramDisplayFilter")!
    
    var minHeightValue: Float { 
        return self.minValue(inputKey: "inputHeight")
    }
    
    var maxHeightValue: Float {
        return self.maxValue(inputKey: "inputHeight")
    }
    
    var minHighLimitValue: Float { 
        return self.minValue(inputKey: "inputHighLimit")
    }
    
    var maxHighLimitValue: Float { 
        return self.maxValue(inputKey: "inputHighLimit")
    }
    
    var minLowLimitValue: Float {
        return self.minValue(inputKey: "inputLowLimit")
    }
    
    var maxLowLimitValue: Float { 
        return self.maxValue(inputKey: "inputLowLimit")
    }
    
    func height(height: Float) -> HistogramDisplayFilter {
        self.filter.setValue(NSNumber.floatNumber(height, min: self.minHeightValue, max: self.maxHeightValue), forKey: "inputHeight")
        return self
    }
    
    func highLimit(limit: Float) -> HistogramDisplayFilter {
        self.filter.setValue(NSNumber.floatNumber(limit, min: self.minHighLimitValue, max: self.maxHighLimitValue), forKey: "inputHighLimit")
        return self
    }
    
    func lowLimit(limit: Float) -> HistogramDisplayFilter {
        self.filter.setValue(NSNumber.floatNumber(limit, min: self.minLowLimitValue, max: self.maxLowLimitValue), forKey: "inputLowLimit")
        return self
    }
    
}
