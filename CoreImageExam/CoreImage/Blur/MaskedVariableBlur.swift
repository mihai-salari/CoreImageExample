//
// Created by daisuke iwata on 2016/05/02.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import UIKit
import CoreImage

final class MaskedVariableBlur: Mask {
    
    let filter = CIFilter(name: "CIMaskedVariableBlur")!
    let minRadius = 0
    let maxRadius = 5
    
}
