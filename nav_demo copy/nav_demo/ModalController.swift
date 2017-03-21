//
//  ModalController.swift
//  nav_demo
//
//  Created by Ryan Munguia on 3/18/17.
//  Copyright © 2017 Ryan Munguia. All rights reserved.
//

import UIKit

class ModalController: UIViewController {
    
    var cancelDelegate: CancelButtonDelegate?
    var doneDelegate: DoneButtonDelegate?
    
    @IBOutlet weak var topField: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func cancelPressed(_ sender: Any) {
        
       cancelDelegate?.cancelButtonPressed(controller: self)
        
    }
    
    @IBAction func donePressed(_ sender: Any) {
        
        let textData =  topField.text!
        
        doneDelegate?.doneButtonPressed(controller: self, text: textData)
        
        print(textData)
        
    }

}


