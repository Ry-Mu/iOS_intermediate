//
//  ViewController.swift
//  myBucketList
//
//  Created by Ryan Munguia on 3/14/17.
//  Copyright © 2017 Ryan Munguia. All rights reserved.
//

import UIKit

class myBucketListViewController: UITableViewController {
    
    var items = ["Sky diving", "Live in Hawaii"]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return items.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // dequeue the cell from our storyboard
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell")!
        // All UITableViewCell objects have a build in textLabel so set it to the model that is corresponding to the row in array
        cell.textLabel?.text = items[indexPath.row]
        // return cell so that Table View knows what to draw in each row
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

