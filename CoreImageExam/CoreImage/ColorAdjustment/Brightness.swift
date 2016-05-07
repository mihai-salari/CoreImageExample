//
// Created by daisuke iwata on 2016/05/02.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Brightness: Processable {
    
    var minBrightness: Double { get }
    var maxBrightness: Double { get }
    
    func brightness(brightness: Double) -> Self
    
}

extension Brightness {
    
    func brightness(brightness: Double) -> Self {
        self.filter.setValue(NSNumber.convertDouble(brightness, min: minBrightness, max: maxBrightness), forKey: kCIInputBrightnessKey)
        return self
    }
    
}