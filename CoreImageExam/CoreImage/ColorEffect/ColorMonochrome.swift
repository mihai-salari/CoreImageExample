//
// Created by daisuke iwata on 2016/05/06.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class ColorMonochrome: Color, Intensity {
    
    let filter = CIFilter(name: "CIColorMonochrome")!
    let minIntensity = 0.0
    let maxIntensity = 1.0
    
}