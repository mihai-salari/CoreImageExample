//
// Created by daisuke iwata on 2016/05/07.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class PerspectiveCorrection: Rectangle {
    
    let filter = CIFilter(name: "CIPerspectiveCorrection")!
    
}
