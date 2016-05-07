//
// Created by daisuke iwata on 2016/05/01.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import UIKit
import CoreImage

public protocol Processable {
    
    var filter: CIFilter { get }
    var attributes: [String: AnyObject] { get }
    
    func input(image: UIImage) -> Self
    func composite(processable: Processable) -> Self // TODO: Rename
    func outputCIImage() -> CIImage
    func outputCGImage() -> CGImage
    func outputUIImage() -> UIImage
    func inputDetailes(key: String) -> NSDictionary
    func minValue(inputKey key: String) -> Float
    func maxValue(inputKey key: String) -> Float
    
}

extension Processable {
    
    var attributes: [String: AnyObject] {
        get {
            return self.filter.attributes
        }
    }
    
    // MARK: - Input
    
    func input(image: UIImage) -> Self {
        guard let ciImage = CIImage(image: image) else {
            return self
        }
        self.filter.setValue(ciImage, forKey: kCIInputImageKey)
        
        return self
    }
    
    func composite(processable: Processable) -> Self {
        self.filter.setValue(processable.outputCIImage(), forKey: kCIInputImageKey)
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
    
    func inputDetailes(key: String) -> NSDictionary {
        return self.attributes[key] as! NSDictionary
    }
    
    func minValue(inputKey key: String) -> Float {
        let detailes = self.inputDetailes(key)
        if let min = detailes[kCIAttributeMin] as? NSNumber {
            print("min value:\(min.floatValue), forKey\(key)")
            return min.floatValue
        }
    
        if let min = detailes[kCIAttributeSliderMin] as? NSNumber {
            print("min value:\(min.floatValue), forKey\(key)")
            return min.floatValue
        }
    
        return 0.0
    }
    
    func maxValue(inputKey key: String) -> Float {
        let detailes = self.inputDetailes(key)
        if let max = detailes[kCIAttributeMax] as? NSNumber {
            print("max value:\(max.floatValue), forKey\(key)")
            return max.floatValue
        }
    
        if let max = detailes[kCIAttributeSliderMax] as? NSNumber {
            print("max value:\(max.floatValue), forKey\(key)")
            return max.floatValue
        }
    
        return 0.0
    }
    
}