//
// Created by daisuke iwata on 2016/05/06.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class TemperatureAndTint: ImageProcessable {
    
    let filter = CIFilter(name: "CITemperatureAndTint")!
    
    func neutral(neutral: CIVector) -> TemperatureAndTint {
        self.filter.setValue(neutral, forKey: "inputNeutral")
        return self
    }
    
    func targetNeutral(targetNeutral: CIVector) -> TemperatureAndTint {
        self.filter.setValue(targetNeutral, forKey: "inputTargetNeutral")
        return self
    }
    
}
