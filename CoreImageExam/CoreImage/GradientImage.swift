//
// Created by daisuke iwata on 2016/05/06.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol GradientImage: ImageProcessable {
    
    func gradientImage(image: CIImage) -> Self
    
}

extension GradientImage {
    
    func gradientImage(image: CIImage) -> Self {
        self.filter.setValue(image, forKey: kCIInputGradientImageKey)
        return self
    } 
    
}
