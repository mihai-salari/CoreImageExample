//
// Created by daisuke iwata on 2016/05/06.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class FalseColor: ImageProcessable {
    
    let filter = CIFilter(name: "CIFalseColor")!
    
    func color1(color: CIColor) -> FalseColor {
        self.filter.setValue(color, forKey: "inputColor1")
        return self
    }
    
    func color2(color: CIColor) -> FalseColor {
        self.filter.setValue(color, forKey: "inputColor2")
        return self
    }
    
}
