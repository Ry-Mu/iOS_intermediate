//
//  ThirdPage.swift
//  nav_demo
//
//  Created by Ryan Munguia on 3/18/17.
//  Copyright © 2017 Ryan Munguia. All rights reserved.
//

import UIKit

class ThirdPage: UIViewController, CancelButtonDelegate, DoneButtonDelegate {
    
    
    @IBOutlet weak var topLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("the nav has \(self.navigationController?.childViewControllers.count) controllers")
    }
    
    func cancelButtonPressed(controller: UIViewController) {
        dismiss(animated: true, completion: nil)
    }
    
    func doneButtonPressed(controller: UIViewController, text: String) {
        topLabel.text = text
        dismiss(animated: true, completion: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let navController = segue.destination as! UINavigationController
        
        let modalController = navController.topViewController as! ModalController
        
        modalController.cancelDelegate = self
        
        modalController.doneDelegate = self
        
    }
    
}
