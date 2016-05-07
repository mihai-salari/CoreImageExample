//
// Created by daisuke iwata on 2016/05/02.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import UIKit
import CoreImage

// TODO: iOS9
final class DiscBlur: Radius {
    
    let filter = CIFilter(name: "CIDiscBlur")!
    
}
