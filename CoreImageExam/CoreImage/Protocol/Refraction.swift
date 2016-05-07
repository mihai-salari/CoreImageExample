//
// Created by daisuke iwata on 2016/05/07.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Refraction: Processable {
    
    var minRefraction: Double { get }
    var maxRefraction: Double { get }
    
    func refraction(refraction: Double) -> Self
    
}

extension Refraction {
    
    func refraction(refraction: Double) -> Self {
        self.filter.setValue(NSNumber.convertDouble(refraction, min: minRefraction, max: maxRefraction), forKey: kCIInputRefractionKey)
        return self
    }
    
}
