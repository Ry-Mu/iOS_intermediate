//
//  ViewController.swift
//  nav_demo
//
//  Created by Ryan Munguia on 3/18/17.
//  Copyright © 2017 Ryan Munguia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("the nav has \(self.navigationController?.childViewControllers.count) controllers")
    }
    
    @IBAction func unwindToHome(segue: UIStoryboardSegue) {
        
    }

}

