//
// Created by daisuke iwata on 2016/05/01.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import UIKit
import CoreImage

public protocol FilterProcessing {
    
    var name: String { get }
    var filter: CIFilter { get set }
    var inputImage: CIImage? { get set }
    
    func input(image: UIImage)
    func outputCIImage() -> CIImage 
    func outputCGImage() -> CGImage
    func outputUIImage() -> UIImage
    
}

extension FilterProcessing {
    
    // MARK: - Input
    
    mutating func input(image: UIImage) {
        guard let ciImage = CIImage(image: image) else {
            return
        }
        self.inputImage = ciImage
        self.filter.setValue(ciImage, forKey: kCIInputImageKey)
    }
    
    // MARK: - Out put
    
    func outputCIImage() -> CIImage {
        guard let ciImage = self.filter.outputImage else {
            if let input = self.inputImage {
                return input
            } else {
                return CIImage.emptyImage()
            }
        }
        return ciImage;
    }
    
    func outputCGImage() -> CGImage {
        guard let input = self.inputImage else {
            return UIImage().CGImage!
        }
        
        let context = CIContext(options: nil)
        return context.createCGImage(self.outputCIImage(), fromRect: input.extent)
    }
    
    func outputUIImage() -> UIImage {
        return UIImage(CGImage: self.outputCGImage())
    }
}