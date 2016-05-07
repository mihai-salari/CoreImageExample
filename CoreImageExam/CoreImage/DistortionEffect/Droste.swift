//
// Created by daisuke iwata on 2016/05/07.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class Droste: Rotation {
    
    let filter = CIFilter(name: "CIDroste")!
    let minStrands = -10.0
    let maxStrands = 10.0
    let minPeriodicity = 1.0
    let maxPeriodicity = 5.0
    let minRotation = 0.0
    let maxRotation = M_PI * 2
    let minZoom = 0.01
    let maxZoom = 5.0

    func insetPoint0(x: CGFloat, y: CGFloat) -> Droste {
        self.filter.setValue(CIVector(x: x, y: y), forKey: "inputInsetPoint0")
        return self
    }
    
    func insetPoint1(x: CGFloat, y: CGFloat) -> Droste {
        self.filter.setValue(CIVector(x: x, y: y), forKey: "inputInsetPoint1")
        return self
    }
    
    func strands(strands: Double) -> Droste {
        self.filter.setValue(NSNumber.convertDouble(strands, min: minStrands, max: maxStrands), forKey: "inputStrands")
        return self
    }
    
    func periodicity(periodicity: Double) -> Droste {
        self.filter.setValue(NSNumber.convertDouble(periodicity, min: minPeriodicity, max: maxPeriodicity), forKey: "inputPeriodicity")
        return self
    }
    
    func zoom(zoom: Double) -> Droste {
        self.filter.setValue(NSNumber.convertDouble(zoom, min: minZoom, max: maxZoom), forKey: "inputZoom")
        return self
    }
    
}
