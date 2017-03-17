//
//  AddItemTableViewController.swift
//  BucketList
//
//  Created by Ryan Munguia on 3/14/17.
//  Copyright © 2017 Ryan Munguia. All rights reserved.
//

import UIKit

class AddItemTableViewController: UITableViewController {
    
    
    weak var delegate: AddItemTableViewControllerDelegate?
    
    var item: String?
    var indexPath: NSIndexPath?
    
    @IBOutlet weak var itemTextField: UITextField!
    
    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        delegate?.cancelButtonPressed(by: self)
    }
    @IBAction func savedButtonPressed(_ sender: UIBarButtonItem) {
        let text = itemTextField.text!
        delegate?.itemSaved(by: self, with: text, at: indexPath)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        itemTextField.text = item

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
