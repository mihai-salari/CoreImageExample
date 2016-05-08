//
// Created by daisuke iwata on 2016/05/07.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class Droste: Rotation {
    
    let filter = CIFilter(name: "CIDroste")!
    
    var minStrands: Double {
        return self.minValue(inputKey: "inputStrands")
    }
    
    var maxStrands: Double {
        return self.maxValue(inputKey: "inputStrands")
    }
    
    var minPeriodicity: Double {
        return self.minValue(inputKey: "inputPeriodicity")
    }
    
    var maxPeriodicity: Double {
        return self.maxValue(inputKey: "inputPeriodicity")
    }
    
    var minZoom: Double {
        return self.minValue(inputKey: "inputZoom")
    }
    
    var maxZoom: Double {
        return self.maxValue(inputKey: "inputZoom")
    }

    func insetPoint0(x: CGFloat, y: CGFloat) -> Droste {
        self.filter.setValue(CIVector(x: x, y: y), forKey: "inputInsetPoint0")
        return self
    }
    
    func insetPoint1(x: CGFloat, y: CGFloat) -> Droste {
        self.filter.setValue(CIVector(x: x, y: y), forKey: "inputInsetPoint1")
        return self
    }
    
    func strands(strands: Double) -> Droste {
        self.filter.setValue(NSNumber.doubleNumber(strands, min: self.minStrands, max: self.maxStrands), forKey: "inputStrands")
        return self
    }
    
    func periodicity(periodicity: Double) -> Droste {
        self.filter.setValue(NSNumber.doubleNumber(periodicity, min: self.minPeriodicity, max: self.maxPeriodicity), forKey: "inputPeriodicity")
        return self
    }
    
    func zoom(zoom: Double) -> Droste {
        self.filter.setValue(NSNumber.doubleNumber(zoom, min: self.minZoom, max: self.maxZoom), forKey: "inputZoom")
        return self
    }
    
}
