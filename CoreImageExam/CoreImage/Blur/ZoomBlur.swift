//
// Created by daisuke iwata on 2016/05/02.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class ZoomBlur: Center, Amount {
    
    let filter = CIFilter(name: "CIZoomBlur")!
    let minAmount = 0.0
    let maxAmount = 200.0
    
}
