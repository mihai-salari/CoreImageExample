//
// Created by daisuke iwata on 2016/05/02.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Amount: Processable {
    
    var minAmount: Double { get }
    var maxAmount: Double { get }
    
    func amount(amount: Double) -> Self
    
}

extension Amount {
    
    func amount(amount: Double) -> Self {
        self.filter.setValue(NSNumber.convertDouble(amount, min: minAmount, max: maxAmount), forKey: "inputAmount")
        return self
    }
    
}
