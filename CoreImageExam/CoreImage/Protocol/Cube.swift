//
// Created by daisuke iwata on 2016/05/06.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Cube: Processable {
    
    var minDimension: Double { get }
    var maxDimension: Double { get }
    
    func cubeData(data: NSData) -> Self
    func cubeDimension(dimension: Double) -> Self
    
}

extension Cube {
    
    func cubeData(data: NSData) -> Self {
        self.filter.setValue(data, forKey: "inputCubeData")
        return self;
    }
    
    func cubeDimension(dimension: Double) -> Self {
        self.filter.setValue(NSNumber.convertDouble(dimension, min: minDimension, max: maxDimension), forKey: "inputCubeDimension")
        return self
    }
    
}
