//
// Created by daisuke iwata on 2016/05/07.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import UIKit
import CoreGraphics
import CoreImage

final class DisplacementDistortion: Scale {
    
    let filter = CIFilter(name: "CIDisplacementDistortion")!
    
    func displacementImage(image: UIImage) -> DisplacementDistortion {
        guard let cgImage = image.CGImage else {
            return self
        }
        
        self.displacementImage(cgImage)
        return self
    }
    
    func displacementImage(image: CGImage) -> DisplacementDistortion {
        let ciImage = CIImage(CGImage: image)
        self.filter.setValue(ciImage, forKey: "inputDisplacementImage")
        return self
    }
    
}
