//
//  ViewController.swift
//  CoreImageExam
//
//  Created by daisuke iwata on 2016/03/06.
//  Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import CoreImage
import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    required override init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        /*
        let sepiaColor = CIColor(red: 0.76, green: 0.65, blue: 0.54)
        let monochromeFilter = CIFilter(name: "CIColorMonochrome",
                withInputParameters: [
                        "inputColor": sepiaColor,
                        "inputIntensity": 1.0
                ])

        let vintageFilter = CIFilter(name: "CIVignette",
                withInputParameters: [
                        "inputRadius": 1.75,
                        "inputIntensity": 1.0
                ])

        if let monochrome = monochromeFilter, vintage = vintageFilter, image = UIImage(named: "gohho") {
            let inputImage = CIImage(image: image)
            monochrome.setValue(inputImage!, forKey: "inputImage")
            vintage.setValue(monochrome.outputImage, forKey: "inputImage")

            if let outputImage = vintage.outputImage, inputImage = inputImage {
                let context = CIContext(options: nil)
                let cgImage = context.createCGImage(outputImage, fromRect: inputImage.extent)
                let uiImage = UIImage(CGImage: cgImage)
                imageView.image = uiImage;
            }
        }
        */
        
        let names = self.filterNames()
        for name in names {
            guard let filter = CIFilter(name: name) else {
                continue
            }
            self.printKeys(filter)
        }
    }

    private func filterNames() -> [String] {
        return CIFilter.filterNamesInCategory(kCICategoryBuiltIn) as [String];
    }

    private func printKeys(filter: CIFilter) {
        print("########### Filter Name ###########")
        print("\n\n")
        print("\(filter.name)\n")
        print("## input keys\n", terminator: "")
        for key in filter.inputKeys {
            print("\(key)\n")
        }
        print("## output keys\n", terminator: "")
        for key in filter.outputKeys {
            print("\(key)\n")
        }
        print("## attributes\n", terminator: "")
        for (key, _) in filter.attributes {
            print("\(key): \(filter.attributes[key])\n")
        }
        print("\n\n")
        print("#################################")
    }
}
