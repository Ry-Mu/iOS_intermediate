//
//  AddItemTableViewControllerDelegate.swift
//  BucketList
//
//  Created by Ryan Munguia on 3/14/17.
//  Copyright © 2017 Ryan Munguia. All rights reserved.
//

import Foundation

protocol AddItemTableViewControllerDelegate: class {
    func itemSaved(by controller: AddItemTableViewController, with text: String, at indexPath: NSIndexPath?)
    func cancelButtonPressed(by controller: AddItemTableViewController)
}
