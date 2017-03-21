//
//  BinaryTableViewCell.swift
//  BinaryCounter
//
//  Created by Ryan Munguia on 3/20/17.
//  Copyright © 2017 Ryan Munguia. All rights reserved.
//

import UIKit

protocol BinaryTableViewCellDelegate: class {
    func valueChangedBy(value: Int)
}


class BinaryTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var valueLabel: UILabel!
    
    weak var delegate: BinaryTableViewCellDelegate?
    
    @IBAction func valueButtonPressed(_ sender: UIButton) {
        
        var value = Int(valueLabel!.text!)
        
        if sender.titleLabel!.text == "-" {
        
        value = -value!
    
        }
        
        delegate?.valueChangedBy(value: value!)
    }
}
