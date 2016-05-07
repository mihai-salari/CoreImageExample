//
// Created by daisuke iwata on 2016/05/07.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class Crop: Processable {
    
    let filter = CIFilter(name: "CICrop")!
    
    func rectangle(x: CGFloat, y: CGFloat, z: CGFloat, w: CGFloat) -> Crop {
        self.filter.setValue(CIVector(x: x, y: y, z: z, w: w), forKey: "CICrop")
        return self
    }
    
}
