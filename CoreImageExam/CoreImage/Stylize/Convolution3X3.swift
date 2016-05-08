//
// Created by daisuke iwata on 2016/05/09.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class Convolution3X3: Bias {
    
    let filter = CIFilter(name: "CIConvolution3X3")!
    
    // TODO:
//    func weight(weights: [CGFloat]) -> Convolution3X3 {
//        guard weights.count == 9 else {
//            return self
//        }
//        
//        self.filter.setValue(CIVector(values: weights), forKey: kCIInputWeightsKey)
//        return self
//    }
    
}
