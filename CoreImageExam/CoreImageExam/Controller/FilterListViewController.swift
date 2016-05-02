//
//  FilterListViewController.swift
//  CoreImageExam
//
//  Created by daisuke iwata on 2016/04/30.
//  Copyright © 2016年 Daisuke Iwata. All rights reserved.
//

import Foundation
import UIKit
import CoreImage

class FilterListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var filterNames: [String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "CIFilter List";
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .Plain, target: nil, action: nil)
        
        filterNames = CIFilter.filterNamesInCategory(kCICategoryBuiltIn)
        for name in filterNames! {
            print(name)
        }
        
        self.tableView.delegate = self
        self.tableView.dataSource = self;
    }
    
    // MARK: UITableViewDataSource
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let names = filterNames where names.count > 0 else {
            return 0
        }
        return names.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        cell.textLabel?.text = filterNames?[indexPath.row]
        return cell
    }
    
    // MARK: UITableViewDelegate
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return CGFloat(44.0)
    }
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        let detailVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("FilterDetailViewController") as! FilterDetailViewController
        detailVC.filterName = self.filterNames?[indexPath.row]
        self.showViewController(detailVC, sender: self)
    }
}