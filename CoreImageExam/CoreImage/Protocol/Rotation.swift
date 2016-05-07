//
// Created by daisuke iwata on 2016/05/07.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Rotation: Processable {
    
    var minRotation: Double { get }
    var maxRotation: Double { get }
    
    func rotation(rotation: Double) -> Self
    
}

extension Rotation {
    
    func rotation(rotation: Double) -> Self {
        self.filter.setValue(NSNumber.convertDouble(rotation, min: minRotation, max: maxRotation), forKey: "inputRotation")
        return self
    }
    
}
