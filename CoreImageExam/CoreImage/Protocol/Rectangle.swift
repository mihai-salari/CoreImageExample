//
// Created by daisuke iwata on 2016/05/07.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Rectangle: Processable {
    
    func topLeft(x: CGFloat, y: CGFloat) -> Self
    func topRight(x: CGFloat, y: CGFloat) -> Self
    func bottomLeft(x: CGFloat, y: CGFloat) -> Self
    func bottomRight(x: CGFloat, y: CGFloat) -> Self
    
}

extension Rectangle {
    
    func topLeft(x: CGFloat, y: CGFloat) -> Self {
        self.filter.setValue(CIVector(x: x, y: y), forKey: "inputTopLeft")
        return self
    }
    
    func topRight(x: CGFloat, y: CGFloat) -> Self {
        self.filter.setValue(CIVector(x: x, y: y), forKey: "inputTopRight")
        return self
    }
    
    func bottomLeft(x: CGFloat, y: CGFloat) -> Self {
        self.filter.setValue(CIVector(x: x, y: y), forKey: "inputBottomLeft")
        return self
    }
    
    func bottomRight(x: CGFloat, y: CGFloat) -> Self {
        self.filter.setValue(CIVector(x: x, y: y), forKey: "inputBottomRight")
        return self
    }
    
}
