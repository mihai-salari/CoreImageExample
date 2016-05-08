//
// Created by daisuke iwata on 2016/05/02.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Amount: Processable {
    
    var minAmountValue: Double { get }
    var maxAmountValue: Double { get }
    
    func amount(amount: Double) -> Self
    
}

extension Amount {
    
    var minAmountValue: Double {
        return self.minValue(inputKey: "inputAmount")
    }
    
    var maxAmountValue: Double {
        return self.maxValue(inputKey: "inputAmount")
    }
    
    func amount(amount: Double) -> Self {
        self.filter.setValue(NSNumber.doubleNumber(amount, min: self.minAmountValue, max: self.maxAmountValue), forKey: "inputAmount")
        return self
    }
    
}
