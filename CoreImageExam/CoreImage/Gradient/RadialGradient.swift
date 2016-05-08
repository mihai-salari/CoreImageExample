//
// Created by daisuke iwata on 2016/05/07.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class RadialGradient: Center, GradientColor {
    
    let filter = CIFilter(name: "CIRadialGradient")!
    
    var minRadius0Value: Double {
        return self.minValue(inputKey: "inputRadius0")
    }
    
    var maxRadius0Value: Double {
        return self.maxValue(inputKey: "inputRadius0")
    }
    
    var minRadius1Value: Double {
        return self.minValue(inputKey: "inputRadius1")
    }
    
    var maxRadius1Value: Double {
        return self.maxValue(inputKey: "inputRadius1")
    }
    
    func radius0(radius: Double) -> RadialGradient {
        self.filter.setValue(NSNumber.doubleNumber(radius, min: minRadius0Value, max: maxRadius0Value), forKey: "inputRadius0")
        return self
    }
    
    func radius1(radius: Double) -> RadialGradient {
        self.filter.setValue(NSNumber.doubleNumber(radius, min: minRadius1Value, max: maxRadius1Value), forKey: "inputRadius1")
        return self
    }
    
}
