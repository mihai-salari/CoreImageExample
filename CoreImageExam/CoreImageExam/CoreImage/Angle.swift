//
// Created by daisuke iwata on 2016/05/02.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Angle: ImageProcessable {
    
    func angle(angle: Double) -> Self
    
}

extension Angle {
    
    func angle(angle: Double) -> Self {
        self.filter.setValue(NSNumber.convertDouble(angle, min: -M_PI, max: M_PI), forKey: kCIInputAngleKey)
        return self
    }
    
}