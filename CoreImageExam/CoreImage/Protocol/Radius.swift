//
// Created by daisuke iwata on 2016/05/02.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Radius: Processable {
    
    var minRadius: Double { get }
    var maxRadius: Double { get }
    
    func radius(radius: Double) -> Self
    
}

extension Radius {
    
    func radius(radius: Double) -> Self {
        self.filter.setValue(NSNumber.convertDouble(radius, min: minRadius, max: maxRadius), forKey: kCIInputRadiusKey)
        return self
    }
    
}