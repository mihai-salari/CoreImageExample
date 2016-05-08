//
// Created by daisuke iwata on 2016/05/06.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Cube: Processable {
    
    var minDimensionValue: Double { get }
    var maxDimensionValue: Double { get }
    
    func cubeData(data: NSData) -> Self
    func cubeDimension(dimension: Double) -> Self
    
}

extension Cube {
    
    var minDimensionValue: Double {
        return self.minValue(inputKey: "inputCubeDimension")
    }
    
    var maxDimensionValue: Double {
        return self.maxValue(inputKey: "inputCubeDimension")
    }
    
    func cubeData(data: NSData) -> Self {
        self.filter.setValue(data, forKey: "inputCubeData")
        return self;
    }
    
    func cubeDimension(dimension: Double) -> Self {
        self.filter.setValue(NSNumber.doubleNumber(dimension, min: self.minDimensionValue, max: self.maxDimensionValue), forKey: "inputCubeDimension")
        return self
    }
    
}
