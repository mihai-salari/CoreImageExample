//
// Created by daisuke iwata on 2016/05/08.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class AreaHistogram: Extent, Scale {
    
    let filter = CIFilter(name: "CIAreaHistogram")!
    
    var minCountValue: Int {
        return self.maxValue(inputKey: "inputCount")
    }
    
    var maxCountValue: Int {
        return self.maxValue(inputKey: "inputCount")
    }
    
    func count(count: Int) -> AreaHistogram {
        self.filter.setValue(NSNumber.intNumber(count, min: self.minCountValue, max: self.maxCountValue), forKey: "inputCount")
        return self
    }
    
}
