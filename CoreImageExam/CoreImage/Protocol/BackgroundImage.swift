//
// Created by daisuke iwata on 2016/05/06.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import UIKit
import CoreGraphics
import CoreImage

protocol BackgroundImage: Processable {
    
    func backgroundImage(image: UIImage) -> Self
    func backgroundImage(image: CGImage) -> Self
    
}

extension BackgroundImage {
    
    func backgroundImage(image: UIImage) -> Self {
        guard let cgImage = image.CGImage else {
            return self
        }
        
        return self.backgroundImage(cgImage)
    }
    
    func backgroundImage(image: CGImage) -> Self {
        let ciImage = CIImage(CGImage: image)
        self.filter.setValue(ciImage, forKey: kCIInputBackgroundImageKey)
        return self
    }
    
}
