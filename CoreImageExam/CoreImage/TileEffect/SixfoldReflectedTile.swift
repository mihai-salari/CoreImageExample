//
// Created by daisuke iwata on 2016/05/10.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class SixfoldReflectedTile: Angle, Center, Width {
    
    let filter = CIFilter(name: "CISixfoldReflectedTile")!
    
}
