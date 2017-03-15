//
//  ViewController.swift
//  BucketList
//
//  Created by Ryan Munguia on 3/14/17.
//  Copyright © 2017 Ryan Munguia. All rights reserved.
//

import UIKit

class BucketListViewController: UITableViewController {
    
    var items = ["go to the moon", "eat a candy bar", "swim in the amazon", "ride a motor bike in tokyo"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //snippet this
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return items.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListitemCell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }

}

