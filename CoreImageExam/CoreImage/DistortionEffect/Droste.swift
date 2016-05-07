//
// Created by daisuke iwata on 2016/05/07.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class Droste: Rotation {
    
    let filter = CIFilter(name: "CIDroste")!
    
    var minStrands: Float {
        return self.minValue(inputKey: "inputStrands")
    }
    
    var maxStrands: Float {
        return self.maxValue(inputKey: "inputStrands")
    }
    
    var minPeriodicity: Float {
        return self.minValue(inputKey: "inputPeriodicity")
    }
    
    var maxPeriodicity: Float {
        return self.maxValue(inputKey: "inputPeriodicity")
    }
    
    var minZoom: Float {
        return self.minValue(inputKey: "inputZoom")
    }
    
    var maxZoom: Float {
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
    
    func strands(strands: Float) -> Droste {
        self.filter.setValue(NSNumber.floatNumber(strands, min: self.minStrands, max: self.maxStrands), forKey: "inputStrands")
        return self
    }
    
    func periodicity(periodicity: Float) -> Droste {
        self.filter.setValue(NSNumber.floatNumber(periodicity, min: self.minPeriodicity, max: self.maxPeriodicity), forKey: "inputPeriodicity")
        return self
    }
    
    func zoom(zoom: Float) -> Droste {
        self.filter.setValue(NSNumber.floatNumber(zoom, min: self.minZoom, max: self.maxZoom), forKey: "inputZoom")
        return self
    }
    
}
