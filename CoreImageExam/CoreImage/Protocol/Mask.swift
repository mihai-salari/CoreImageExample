//
// Created by daisuke iwata on 2016/05/02.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Mask: Processable {
    
    func mask(image: CIImage) -> Self
    
}

extension Mask {
    
    func mask(image: CIImage) -> Self {
        self.filter.setValue(image, forKey: kCIInputMaskImageKey)
        return self
    }
    
}
