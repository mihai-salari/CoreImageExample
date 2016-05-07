//
// Created by daisuke iwata on 2016/05/07.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Transform: Processable {
    
    func transform(transform: CGAffineTransform) -> Self
    
}

extension Transform {
    
    func transform(transform: CGAffineTransform) -> Self {
        self.filter.setValue(NSValue(CGAffineTransform: transform), forKey: kCIInputTransformKey)
        return self
    }
    
}
