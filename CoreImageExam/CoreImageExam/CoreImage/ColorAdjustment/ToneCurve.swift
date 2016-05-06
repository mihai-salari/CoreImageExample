//
// Created by daisuke iwata on 2016/05/06.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class ToneCurve: ImageProcessable {
    
    let filter = CIFilter(name: "CIToneCurve")!
    
    func point1(point1: CIVector) -> ToneCurve {
        self.filter.setValue(point1, forKey: "inputPoint1")
        return self
    }
    
    func point2(point2: CIVector) -> ToneCurve {
        self.filter.setValue(point2, forKey: "inputPoint2")
        return self
    }
    
    func point3(point3: CIVector) -> ToneCurve {
        self.filter.setValue(point3, forKey: "inputPoint3")
        return self
    }
    
    func point4(point4: CIVector) -> ToneCurve {
        self.filter.setValue(point4, forKey: "inputPoint4")
        return self
    }
    
}
