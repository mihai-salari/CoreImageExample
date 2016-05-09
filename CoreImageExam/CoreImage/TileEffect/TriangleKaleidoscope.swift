//
// Created by daisuke iwata on 2016/05/10.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class TriangleKaleidoscope: Rotation, Point {
    
    let filter = CIFilter(name: "CITriangleKaleidoscope")!
    
}

extension TriangleKaleidoscope {
    
    var minSizeValue: Double {
        return self.minValue(inputKey: "inputSize")
    }
    
    var maxSizeValue: Double {
        return self.maxValue(inputKey: "inputSize")
    }
    
    func size(size: Double) -> TriangleKaleidoscope {
        self.filter.setValue(NSNumber.doubleNumber(size, min: self.minSizeValue, max: self.maxSizeValue), forKey: "inputSize")
        return self
    }
    
}

extension TriangleKaleidoscope {
    
    var minDecayValue: Double {
        return self.minValue(inputKey: "inputDecay")
    }
    
    var maxDecayValue: Double {
        return self.maxValue(inputKey: "inputDecay")
    }
    
    func decay(decay: Double) -> TriangleKaleidoscope {
        self.filter.setValue(NSNumber.doubleNumber(decay, min: self.minDecayValue, max: self.maxDecayValue), forKey: "inputDecay")
        return self
    }
    
}
