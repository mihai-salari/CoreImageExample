//
// Created by daisuke iwata on 2016/05/09.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class FourfoldReflectedTile: AcuteAngle, Angle, Center, Width {
    
    let filter = CIFilter(name: "CIFourfoldReflectedTile")!
    
}
