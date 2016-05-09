//
// Created by daisuke iwata on 2016/05/10.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class OpTile: Angle, Center, Scale, Width {
    
    let filter = CIFilter(name: "CIOpTile")!
    
}
