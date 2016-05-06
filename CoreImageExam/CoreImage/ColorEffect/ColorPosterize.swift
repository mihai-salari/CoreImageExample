//
// Created by daisuke iwata on 2016/05/06.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class ColorPosterize: ImageProcessable {
    
    let filter = CIFilter(name: "CIColorPosterize")!
    let minLevels = 2.0 // 1?
    let maxLevels = 30.0
    
    func levels(levels: Double) -> ColorPosterize {
        self.filter.setValue(NSNumber.convertDouble(levels, min: minLevels, max: maxLevels), forKey: "")
        return self
    }
    
}
