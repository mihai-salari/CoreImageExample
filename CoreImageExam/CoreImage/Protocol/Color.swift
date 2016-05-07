//
// Created by daisuke iwata on 2016/05/06.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Color: Processable {
    
    func color(color: CIColor) -> Self
    
}

extension Color {
    
    func color(color: CIColor) -> Self {
        self.filter.setValue(color, forKey: kCIInputColorKey)
        return self
    }
    
}
