//
// Created by daisuke iwata on 2016/05/06.
// Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import Foundation
import CoreImage

final class SourceOverCompositing: BackgroundImage {
    
    let filter = CIFilter(name: "CISourceOverCompositing")!
    
}
