//
// Created by daisuke iwata on 2016/05/02.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Angle: Processable {
    
    var minAngle: Double { get }
    var maxAngle: Double { get }
    
    func angle(angle: Double) -> Self
    
}

extension Angle {
    
    func angle(angle: Double) -> Self {
        self.filter.setValue(NSNumber.convertDouble(angle, min: minAngle, max: maxAngle), forKey: kCIInputAngleKey)
        return self
    }
    
}