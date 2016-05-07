//
// Created by daisuke iwata on 2016/05/06.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class ToneCurve: Processable {
    
    let filter = CIFilter(name: "CIToneCurve")!
    
    func point1(x: CGFloat, y: CGFloat) -> ToneCurve {
        self.filter.setValue(CIVector(x: x, y: y), forKey: "inputPoint1")
        return self
    }
    
    func point2(x: CGFloat, y: CGFloat) -> ToneCurve {
        self.filter.setValue(CIVector(x: x, y: y), forKey: "inputPoint2")
        return self
    }
    
    func point3(x: CGFloat, y: CGFloat) -> ToneCurve {
        self.filter.setValue(CIVector(x: x, y: y), forKey: "inputPoint3")
        return self
    }
    
    func point4(x: CGFloat, y: CGFloat) -> ToneCurve {
        self.filter.setValue(CIVector(x: x, y: y), forKey: "inputPoint4")
        return self
    }
    
}
