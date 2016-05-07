//
// Created by daisuke iwata on 2016/05/07.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Extent: Processable {
    
    func extent(rect: CGRect) -> Self
    
}

extension Extent {
    
    func extent(rect: CGRect) -> Self {
        self.filter.setValue(CIVector(CGRect: rect), forKey: kCIInputExtentKey)
        return self
    }
    
}
