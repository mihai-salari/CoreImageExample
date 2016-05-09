//
// Created by daisuke iwata on 2016/05/09.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

protocol Count: Processable {
    
    var minCountValue: Int { get }
    var maxCountValue: Int { get }
    
    func count(count: Int) -> Self
    
}

extension Count {
    
    var minCountValue: Int {
        return self.maxValue(inputKey: "inputCount")
    }
    
    var maxCountValue: Int {
        return self.maxValue(inputKey: "inputCount")
    }
    
    func count(count: Int) -> Self {
        self.filter.setValue(NSNumber.intNumber(count, min: self.minCountValue, max: self.maxCountValue), forKey: "inputCount")
        return self
    }
    
}