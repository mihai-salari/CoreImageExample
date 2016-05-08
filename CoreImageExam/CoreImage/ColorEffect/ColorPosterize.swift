//
// Created by daisuke iwata on 2016/05/06.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class ColorPosterize: Processable {
    
    let filter = CIFilter(name: "CIColorPosterize")!
    
    var minLevelsValue: Double {
        return self.minValue(inputKey: "inputLevels")
    }
    
    var maxLevelsValue: Double {
        return self.maxValue(inputKey: "inputLevels")
    }
    
    func levels(levels: Double) -> ColorPosterize {
        self.filter.setValue(NSNumber.doubleNumber(levels, min: self.minLevelsValue, max: self.maxLevelsValue), forKey: "inputLevels")
        return self
    }
    
}
