//
// Created by daisuke iwata on 2016/05/02.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import UIKit
import CoreGraphics
import CoreImage

protocol MaskImage: Processable {
    
    func mask(image: UIImage) -> Self
    func mask(image: CGImage) -> Self
    
}

extension MaskImage {
    
    func mask(image: UIImage) -> Self {
        guard let cgImage = image.CGImage else {
            return self
        }
        
        return self.mask(cgImage)
    }
    
    func mask(image: CGImage) -> Self {
        let ciImage = CIImage(CGImage: image)
        self.filter.setValue(ciImage, forKey: kCIInputMaskImageKey)
        return self
    }
    
}
