//
//  DoneDelegate.swift
//  bucket_demo
//
//  Created by Ryan Munguia on 3/20/17.
//  Copyright © 2017 Ryan Munguia. All rights reserved.
//

import Foundation
import UIKit

protocol doneDelegate: class {
    func doneButtonPressed(controller: UIViewController, text: String)
    func doneButtonPressedWithEdit(controller: UIViewController, text: String, index: Int)
}
