//
//  ViewController.swift
//  nav_demo
//
//  Created by Ryan Munguia on 3/15/17.
//  Copyright © 2017 Ryan Munguia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("The nav has \(self.navigationController?.childViewControllers.count) controllers")
        //This gives me access to the nav controller that holds all the views. gives me access to the navigation stack.
    }
    
    @IBAction func unwindToHome(segue: UIStoryboardSegue) {
        
    }

}

