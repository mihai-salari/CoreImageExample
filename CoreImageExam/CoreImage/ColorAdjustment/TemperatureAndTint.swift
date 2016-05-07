//
// Created by daisuke iwata on 2016/05/06.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class TemperatureAndTint: Processable {
    
    let filter = CIFilter(name: "CITemperatureAndTint")!
    
    func neutral(x: CGFloat, y: CGFloat) -> TemperatureAndTint {
        self.filter.setValue(CIVector(x: x, y: y), forKey: "inputNeutral")
        return self
    }
    
    func targetNeutral(x: CGFloat, y: CGFloat) -> TemperatureAndTint {
        self.filter.setValue(CIVector(x: x, y: y), forKey: "inputTargetNeutral")
        return self
    }
    
}
