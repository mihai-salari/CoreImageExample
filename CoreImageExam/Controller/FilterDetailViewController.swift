//
//  FilterDetailViewController.swift
//  CoreImageExam
//
//  Created by daisuke iwata on 2016/04/30.
//  Copyright © 2016年 Daisuke Iwata. All rights reserved.
//

import Foundation
import UIKit
import CoreImage
import SafariServices

class FilterDetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    
    var filterName: String?
    var inputKeys: [String]?
    var outputKeys: [String]?
    var attributes: [String : AnyObject]? 
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let filterName = self.filterName, filter = CIFilter(name: filterName) else {
            return
        }
        
        self.navigationItem.title = filterName
        self.inputKeys = filter.inputKeys
        self.outputKeys = filter.outputKeys
        self.attributes = filter.attributes
    
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = 70.0
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        guard inputKeys!.contains("inputImage") else {
            return
        }
        
        guard let originImage = self.imageView?.image else {
            return
        }
        
        guard let inputImage = CIImage(image: originImage) else {
            return
        }
        
        filter.setValue(inputImage, forKey: "inputImage")
        guard let outputImage = filter.outputImage else {
            return
        }
        
        let context = CIContext(options: nil)
        let cgImage = context.createCGImage(outputImage, fromRect: inputImage.extent)
        self.imageView?.image = UIImage(CGImage: cgImage)
        
    }
    
    // MARK; - UITableViewDataSource
    
    @available(iOS 2.0, *) func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 3
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return self.inputKeys!.count
        case 1:
            return self.outputKeys!.count
        case 2:
            return self.attributes!.count
        default:
            return 0
        }
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Input Keys"
        case 1:
            return "Output Keys"
        case 2:
            return "Attributes"
        default:
            return ""
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let row = indexPath.row
        let section = indexPath.section
    
        let cell: UITableViewCell
        if section == 2 {
            cell = tableView.dequeueReusableCellWithIdentifier("AttributeCell", forIndexPath: indexPath)
        } else {
            cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        }
    
        switch section {
        case 0:
            cell.textLabel?.text = self.inputKeys?[row]
        case 1:
            cell.textLabel?.text = self.outputKeys?[row]
        case 2:
            let attributeCell = cell as! FilterAttributeCell
            let lazyMapCollection = self.attributes!.keys
            let keys = lazyMapCollection.map { String($0) }.sort { $0 < $1 }
            
            attributeCell.attributeNameLabel.text = keys[row]
            if let value = self.attributes![keys[row]] {
                attributeCell.valueLabel.text = "\(value)"
            }
            
            attributeCell.contentView.updateConstraintsIfNeeded()
            attributeCell.contentView.setNeedsLayout()
            attributeCell.contentView.layoutIfNeeded()
            return attributeCell
        default:
            break
        }
        
        return cell
    }
    
    // MARK - UITableViewDelegate
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let section = indexPath.section
        guard section == 2 else {
            tableView.deselectRowAtIndexPath(indexPath, animated: true)
            return
        }
    
        let row = indexPath.row
        let lazyMapCollection = self.attributes!.keys
        let keys = lazyMapCollection.map { String($0) }.sort { $0 < $1 }
        
        let documentKey = keys[row]
        if documentKey == "CIAttributeReferenceDocumentation" {
            if let value = self.attributes![keys[row]] {
                let url = value as! NSURL
                let safariViewController = SFSafariViewController(URL: url)
                self.showViewController(safariViewController, sender: self)
            }
        }
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
}