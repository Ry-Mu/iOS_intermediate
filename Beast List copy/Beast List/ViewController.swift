//
//  ViewController.swift
//  Beast List
//
//  Created by Ryan Munguia on 3/13/17.
//  Copyright © 2017 Ryan Munguia. All rights reserved.
//

import UIKit
//put these in a code snippet. You will be using this a lot!!!! Definitely do this for the black belt!

class ViewController: UIViewController, UITableViewDataSource {
    
    var tasks = ["Something cool", "something VERY cool", "Something EXTREMELY cool"]
    
    @IBOutlet weak var taskTextField: UITextField!

    @IBOutlet weak var tableViewObject: UITableView!
    
    @IBAction func beastButtonPressed(_ sender: UIButton) {
        // your code here
        tasks.append(taskTextField.text!)
        // Add the textField text as an item to the array
        tableViewObject.reloadData()


    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewObject.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }




  //Snippet this
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.textLabel?.text = tasks[indexPath.row]
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Section: \(indexPath.section) and Row: \(indexPath.row)")
        tasks.remove(at: indexPath.row)
        tableView.reloadData()
    }
    
}

