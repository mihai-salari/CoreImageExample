//
// Created by daisuke iwata on 2016/05/02.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Amount: Processable {
    
    var minAmountValue: Float { get }
    var maxAmountValue: Float { get }
    
    func amount(amount: Float) -> Self
    
}

extension Amount {
    
    var minAmountValue: Float {
        return self.minValue(inputKey: "inputAmount")
    }
    
    var maxAmountValue: Float {
        return self.maxValue(inputKey: "inputAmount")
    }
    
    func amount(amount: Float) -> Self {
        self.filter.setValue(NSNumber.floatNumber(amount, min: self.minAmountValue, max: self.maxAmountValue), forKey: "inputAmount")
        return self
    }
    
}
