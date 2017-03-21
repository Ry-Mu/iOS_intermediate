 //
//  AddItemViewController.swift
//  bucket_demo
//
//  Created by Ryan Munguia on 3/20/17.
//  Copyright © 2017 Ryan Munguia. All rights reserved.
//

import Foundation
import UIKit
 
 class AddItemViewController: UIViewController {
    
    
    @IBOutlet weak var userTextField: UITextField!
    
    var cancelDelegateVariable: CancelDelegate?
    
    var doneDelegateVariable: doneDelegate?
    
    var indexOfItemToEdit: Int?
    var textOfItemToEdit: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let item = textOfItemToEdit {
            userTextField.text = item
            self.navigationItem.title = "Edit Item"
        }
    }
    
    @IBAction func cancelPressed(_ sender: Any) {
        
        cancelDelegateVariable?.cancelButtonPressed(controller: self)
        
    }
    
    @IBAction func donePressed(_ sender: Any) {
        
        let userInput = userTextField.text!
        
        if let index = indexOfItemToEdit {
            doneDelegateVariable?.doneButtonPressedWithEdit(controller: self, text: userInput, index: index)
        }else {
            doneDelegateVariable?.doneButtonPressed(controller: self, text: userInput)
        }
        
        
    }
    
    
 }
