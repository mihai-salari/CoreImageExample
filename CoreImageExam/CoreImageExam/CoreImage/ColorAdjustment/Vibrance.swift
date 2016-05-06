//
// Created by daisuke iwata on 2016/05/06.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class Vibrance: Amount {
    
    let filter = CIFilter(name: "CIVibrance")!
    let minAmount = -1.0
    let maxAmount = 1.0
    
}
