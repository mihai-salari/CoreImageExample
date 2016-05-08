//
// Created by daisuke iwata on 2016/05/09.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class BlendWithAlphaMask: BackgroundImage, MaskImage {
    
    let filter = CIFilter(name: "CIBlendWithAlphaMask")!
    
}
