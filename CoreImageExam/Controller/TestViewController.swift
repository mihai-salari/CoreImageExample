//
//  TestViewController.swift
//  CoreImageExam
//
//  Created by daisuke iwata on 2016/03/06.
//  Copyright (c) 2016 Daisuke Iwata. All rights reserved.
//

import CoreImage
import UIKit


class TestViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(
            title: "Close",
                style: .Plain,
                target: self,
                action: "dismiss")

        guard let image = UIImage(named: "gohho") else {
            return
        }
        
        let boxBlur = BoxBlur()
        self.imageView.image = boxBlur.input(image).radius(30).outputUIImage()
        
//        let sepiaColor = CIColor(red: 0.76, green: 0.65, blue: 0.54)
//        let monochromeFilter = CIFilter(name: "CIColorMonochrome",
//                withInputParameters: [
//                        "inputColor": sepiaColor,
//                        "inputIntensity": 1.0
//                ])
//
//        let vintageFilter = CIFilter(name: "CIVignette",
//                withInputParameters: [
//                        "inputRadius": 1.75,
//                        "inputIntensity": 1.0
//                ])
//
//        if let monochrome = monochromeFilter, vintage = vintageFilter, image = UIImage(named: "gohho") {
//            let inputImage = CIImage(image: image)
//            monochrome.setValue(inputImage!, forKey: "inputImage")
//            vintage.setValue(monochrome.outputImage, forKey: "inputImage")
//
//            if let outputImage = vintage.outputImage, inputImage = inputImage {
//                let context = CIContext(options: nil)
//                let cgImage = context.createCGImage(outputImage, fromRect: inputImage.extent)
//                let uiImage = UIImage(CGImage: cgImage)
//                imageView.image = uiImage;
//            }
//        }
    }
    
    func dismiss() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
