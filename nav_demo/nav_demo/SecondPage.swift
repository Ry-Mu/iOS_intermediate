//
//  SecondPage.swift
//  nav_demo
//
//  Created by Ryan Munguia on 3/15/17.
//  Copyright © 2017 Ryan Munguia. All rights reserved.
//

import UIKit

class SecondPage: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("The nav has \(self.navigationController?.childViewControllers.count) controllers")
    }
}
