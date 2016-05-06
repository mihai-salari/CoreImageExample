//
// Created by daisuke iwata on 2016/05/02.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class ColorClamp: ImageProcessable {
    
    let filter = CIFilter(name: "CIColorClamp")!
    
    func minComponents(x: CGFloat, y: CGFloat, z: CGFloat, w: CGFloat) -> ColorClamp {
        self.filter.setValue(CIVector(x: x, y: y, z: z, w: w), forKey: "inputMinComponents")
        return self;
    }
    
    func maxComponents(x: CGFloat, y: CGFloat, z: CGFloat, w: CGFloat) -> ColorClamp {
        self.filter.setValue(CIVector(x: x, y: y, z: z, w: w), forKey: "inputMaxComponents")
        return self;
    }
    
}
