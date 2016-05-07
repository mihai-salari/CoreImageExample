//
// Created by daisuke iwata on 2016/05/06.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class ColorPosterize: Processable {
    
    let filter = CIFilter(name: "CIColorPosterize")!
    
    var minLevelsValue: Float {
        return self.minValue(inputKey: "inputLevels")
    }
    
    var maxLevelsValue: Float {
        return self.maxValue(inputKey: "inputLevels")
    }
    
    func levels(levels: Float) -> ColorPosterize {
        self.filter.setValue(NSNumber.convertFloat(levels, min: self.minLevelsValue, max: self.maxLevelsValue), forKey: "inputLevels")
        return self
    }
    
}
