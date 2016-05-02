//
// Created by daisuke iwata on 2016/05/02.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import UIKit
import CoreImage

final class BoxBlur: ImageProcessable, Radius {
    
    let filter: CIFilter = CIFilter(name: "CIBoxBlur")!
    
    let minRadius: Int = 1
    let maxRadius: Int = 100
    
    func radius(radius: Int) -> BoxBlur {
        self.filter.setValue(self.convertNumber(radius), forKey: kCIInputRadiusKey)
        return self
    }
}
