//
// Created by daisuke iwata on 2016/05/06.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Cube: Processable {
    
    var minDimensionValue: Float { get }
    var maxDimensionValue: Float { get }
    
    func cubeData(data: NSData) -> Self
    func cubeDimension(dimension: Float) -> Self
    
}

extension Cube {
    
    var minDimensionValue: Float {
        return self.minValue(inputKey: "inputCubeDimension")
    }
    
    var maxDimensionValue: Float {
        return self.maxValue(inputKey: "inputCubeDimension")
    }
    
    func cubeData(data: NSData) -> Self {
        self.filter.setValue(data, forKey: "inputCubeData")
        return self;
    }
    
    func cubeDimension(dimension: Float) -> Self {
        self.filter.setValue(NSNumber.convertFloat(dimension, min: self.minDimensionValue, max: self.maxDimensionValue), forKey: "inputCubeDimension")
        return self
    }
    
}
