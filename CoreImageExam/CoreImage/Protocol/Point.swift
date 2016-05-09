//
// Created by daisuke iwata on 2016/05/10.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Point: Processable {
    
    func point(point: CGPoint) -> Self
    
}

extension Point {
    
    func point(point: CGPoint) -> Self {
        self.filter.setValue(CIVector(CGPoint: point), forKey: "inputPoint")
        return self
    }
    
}
