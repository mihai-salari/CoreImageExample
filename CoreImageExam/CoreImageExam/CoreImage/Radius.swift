//
// Created by daisuke iwata on 2016/05/02.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Radius: ImageProcessable {
    
    var minRadius: Int { get }
    var maxRadius: Int { get }
    
    func radius(radius: Int) -> Self
    
}

extension Radius {
    
    func radius(radius: Int) -> Self {
        self.filter.setValue(NSNumber.convertInt(radius, min: minRadius, max: maxRadius), forKey: kCIInputRadiusKey)
        return self
    }
    
}