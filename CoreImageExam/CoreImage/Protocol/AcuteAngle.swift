//
// Created by daisuke iwata on 2016/05/09.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol AcuteAngle: Processable {
    
    var minAcuteAngleValue: Double { get }
    var maxAcuteAngleValue: Double { get }
    
    func acuteAngle(angle: Double) -> Self
    
}

extension AcuteAngle {
    
    var minAcuteAngleValue: Double {
        return self.minValue(inputKey: "inputAcuteAngle")
    }
    
    var maxAcuteAngleValue: Double {
        return self.maxValue(inputKey: "inputAcuteAngle")
    }
    
    func acuteAngle(angle: Double) -> Self {
        self.filter.setValue(NSNumber.doubleNumber(angle, min: self.minAcuteAngleValue, max: self.maxAcuteAngleValue), forKey: "inputAcuteAngle")
        return self;
    }
    
}
