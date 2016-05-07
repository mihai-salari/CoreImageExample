//
// Created by daisuke iwata on 2016/05/07.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import UIKit
import CoreImage

protocol GradientColor: Processable {
    
    func color0(color: UIColor) -> Self
    func color1(color: UIColor) -> Self
    
}

extension GradientColor {
    
    func color0(color: UIColor) -> Self {
        self.filter.setValue(CIColor(CGColor: color.CGColor), forKey: "inputColor0")
        return self
    }
    
    func color1(color: UIColor) -> Self {
        self.filter.setValue(CIColor(CGColor: color.CGColor), forKey: "inputColor1")
        return self
    }
    
}
