//
//  DirectionalDestinationViewController.swift
//  NorthEastSouthWest
//
//  Created by Ryan Munguia on 3/15/17.
//  Copyright © 2017 Ryan Munguia. All rights reserved.
//

import UIKit

class DirectionalDestinationViewController: UIViewController {

    @IBOutlet weak var goBackButton: UIButton!
    
    var direction: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        goBackButton.setTitle(direction, for: .normal)
    }


}
