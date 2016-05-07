//
// Created by daisuke iwata on 2016/05/02.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

// TODO: iOS9
final class MedianFilter: Processable {
    
    let filter: CIFilter = CIFilter(name: "CIMedianFilter")!
    
}
