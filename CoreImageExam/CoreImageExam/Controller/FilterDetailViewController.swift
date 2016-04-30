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

class FilterDetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    
    var filterName: String?
    var filter: CIFilter?
    var inputKeys: [String]?
    var outputKeys: [String]?
    
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
        
        self.navigationItem.title = filterName;
        self.inputKeys = filter.inputKeys;
        self.outputKeys = filter.outputKeys;
        
        self.tableView.delegate = self;
        self.tableView.dataSource = self;
    }
    
    // MARK; - UITableViewDataSource
    
    @available(iOS 2.0, *) func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return self.inputKeys!.count
        case 1:
            return self.outputKeys!.count
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
        default:
            return ""
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        
        let row = indexPath.row
        let section = indexPath.section
        
        if section == 0 {
            cell.textLabel?.text = self.inputKeys?[row]
        }
        
        if section == 1 {
            cell.textLabel?.text = self.outputKeys?[row]
        }
        return cell
    }
    
    // MARK - UITableViewDelegate
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
}