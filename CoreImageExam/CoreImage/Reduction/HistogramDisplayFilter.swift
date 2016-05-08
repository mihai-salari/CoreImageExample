//
// Created by daisuke iwata on 2016/05/08.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class HistogramDisplayFilter: Processable {
    
    let filter = CIFilter(name: "CIHistogramDisplayFilter")!
    
    var minHeightValue: Double { 
        return self.minValue(inputKey: "inputHeight")
    }
    
    var maxHeightValue: Double {
        return self.maxValue(inputKey: "inputHeight")
    }
    
    var minHighLimitValue: Double { 
        return self.minValue(inputKey: "inputHighLimit")
    }
    
    var maxHighLimitValue: Double { 
        return self.maxValue(inputKey: "inputHighLimit")
    }
    
    var minLowLimitValue: Double {
        return self.minValue(inputKey: "inputLowLimit")
    }
    
    var maxLowLimitValue: Double { 
        return self.maxValue(inputKey: "inputLowLimit")
    }
    
    func height(height: Double) -> HistogramDisplayFilter {
        self.filter.setValue(NSNumber.doubleNumber(height, min: self.minHeightValue, max: self.maxHeightValue), forKey: "inputHeight")
        return self
    }
    
    func highLimit(limit: Double) -> HistogramDisplayFilter {
        self.filter.setValue(NSNumber.doubleNumber(limit, min: self.minHighLimitValue, max: self.maxHighLimitValue), forKey: "inputHighLimit")
        return self
    }
    
    func lowLimit(limit: Double) -> HistogramDisplayFilter {
        self.filter.setValue(NSNumber.doubleNumber(limit, min: self.minLowLimitValue, max: self.maxLowLimitValue), forKey: "inputLowLimit")
        return self
    }
    
}
