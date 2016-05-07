//
// Created by daisuke iwata on 2016/05/02.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

// TODO: iOS9
final class NoiseReduction: NoiseLevel, Sharpness {
    
    let filter = CIFilter(name: "CINoiseReduction")!
    
}
