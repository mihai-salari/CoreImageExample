//
// Created by daisuke iwata on 2016/05/01.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import UIKit
import CoreImage

public protocol ImageProcessable {
    
    var filter: CIFilter { get }
    
    func input(image: UIImage) -> Self
    func outputCIImage() -> CIImage 
    func outputCGImage() -> CGImage
    func outputUIImage() -> UIImage
    func composite(processable: ImageProcessable) -> ImageProcessable  
}

extension ImageProcessable {
    
    // MARK: - Input
    
    func input(image: UIImage) -> Self {
        guard let ciImage = CIImage(image: image) else {
            return self
        }
        self.filter.setValue(ciImage, forKey: kCIInputImageKey)
        
        return self
    }
    
    // MARK: - Output
    
    func outputCIImage() -> CIImage {
        guard let ciImage = self.filter.outputImage else {
            if let input = self.filter.valueForKey(kCIInputImageKey) as! CIImage? {
                return input
            } else {
                return CIImage.emptyImage()
            }
        }
        return ciImage;
    }
    
    func outputCGImage() -> CGImage {
        guard let input = self.filter.valueForKey(kCIInputImageKey) as! CIImage? else {
            return UIImage().CGImage!
        }
        
        let context = CIContext(options: nil)
        return context.createCGImage(self.outputCIImage(), fromRect: input.extent)
    }
    
    func outputUIImage() -> UIImage {
        return UIImage(CGImage: self.outputCGImage())
    }
    
    // MARK: -
    
    func composite(processable: ImageProcessable) -> ImageProcessable {
        self.filter.setValue(processable.outputCIImage(), forKey: kCIInputImageKey)
        return self
    }
}