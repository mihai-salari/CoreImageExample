//
// Created by daisuke iwata on 2016/05/02.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import UIKit
import CoreImage

final class BoxBlur: Radius {
    
    let filter = CIFilter(name: "CIBoxBlur")!
    let minRadius = 1.0
    let maxRadius = 100.0
    
}
