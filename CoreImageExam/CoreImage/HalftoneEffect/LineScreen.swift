//
// Created by daisuke iwata on 2016/05/09.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class LineScreen: Angle, Center, Width, Sharpness {
    
    let filter = CIFilter(name: "CILineScreen")!
    
}
