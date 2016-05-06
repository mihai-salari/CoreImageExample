//
// Created by daisuke iwata on 2016/05/02.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Sharpness: ImageProcessable {
    
    var minSharpness: Double { get }
    var maxSharpness: Double { get }
    
    func sharpness(sharpness: Double) -> Self
    
}

extension Sharpness {
    
    func sharpness(sharpness: Double) -> Self {
        self.filter.setValue(NSNumber.convertDouble(sharpness, min: minSharpness, max: maxSharpness), forKey: kCIInputSharpnessKey)
        return self;
    }
    
}
