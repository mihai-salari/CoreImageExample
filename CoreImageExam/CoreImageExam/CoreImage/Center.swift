//
// Created by daisuke iwata on 2016/05/02.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Center: ImageProcessable {
    
    func center(x x: CGFloat, y: CGFloat) -> Self
    
}

extension Center {
    
    func center(x x: CGFloat, y: CGFloat) -> Self {
        self.filter.setValue(CIVector(x: x, y: y), forKey: kCIInputCenterKey)
        return self
    }
    
}
