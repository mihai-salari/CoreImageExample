//
// Created by daisuke iwata on 2016/05/07.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import UIKit
import CoreGraphics
import CoreImage

final class GlassDistortion: Center, Scale {
    
    let filter = CIFilter(name: "CIGlassDistortion")!
    
    func texture(image: UIImage) -> GlassDistortion {
        guard let cgImage = image.CGImage else {
            return self
        }
        
        self.texture(cgImage)
        return self
    }
    
    func texture(image: CGImage) -> GlassDistortion {
        let ciImage = CIImage(CGImage: image)
        self.filter.setValue(ciImage, forKey: "inputTexture")
        return self
    }
    
}
