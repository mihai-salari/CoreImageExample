//
// Created by daisuke iwata on 2016/05/07.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class StretchCrop: Processable {
    // TODO:
    let filter = CIFilter(name: "CIStretchCrop")!
    
    func size() -> StretchCrop {
        
        return self
    }
    
    func inputCropAmount() -> StretchCrop {
        
        return self
    }
    
    func inputCenterStretchAmount() -> StretchCrop {
        
        return self
    }
    
}
