//
//  DoneDelegate.swift
//  nav_demo
//
//  Created by Ryan Munguia on 3/18/17.
//  Copyright © 2017 Ryan Munguia. All rights reserved.
//

import UIKit

protocol DoneButtonDelegate: class {
    func doneButtonPressed(controller: UIViewController, text: String)
}
