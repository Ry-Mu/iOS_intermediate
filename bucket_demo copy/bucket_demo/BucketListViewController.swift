//
//  ViewController.swift
//  bucket_demo
//
//  Created by Ryan Munguia on 3/20/17.
//  Copyright © 2017 Ryan Munguia. All rights reserved.
//

import UIKit

class BucketListViewController: UITableViewController, CancelDelegate, doneDelegate {
    
    var list = ["get black belt", "finish ios"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    //we use override because we are inheriting from the class
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return an integer that indicated how many rows (cells) to draw. Tasks is the name of the var list created at top
        return list.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Get the UITableViewCell and create/populate it with data then return it
        let cell = tableView.dequeueReusableCell(withIdentifier: "bucketCell", for: indexPath)
        cell.textLabel?.text = list[indexPath.row]
        
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        
        performSegue(withIdentifier: "editItem", sender: indexPath)
        
        

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let nav = segue.destination as! UINavigationController
        
        let controller = nav.topViewController as! AddItemViewController
        
        controller.cancelDelegateVariable = self
        controller.doneDelegateVariable = self
        
        
        if segue.identifier == "editItem" {
            
            let indexPath = sender as! IndexPath
            
            controller.indexOfItemToEdit = indexPath.row
            
            controller.textOfItemToEdit = list[indexPath.row]
            
        }
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        print("delete item at index \(indexPath.row)") //optional line to test if working from example
        list.remove(at: indexPath.row) //list is from the example
        self.tableView.reloadData()
    }
    
    //protocol methods
    
    func cancelButtonPressed(controller: UIViewController) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    func doneButtonPressed(controller: UIViewController, text: String) {
        
        list.append(text)
        
        self.tableView.reloadData()
        
        dismiss(animated: true, completion: nil)
    }
    
    func doneButtonPressedWithEdit(controller: UIViewController, text: String, index: Int) {
        list[index] = text
        self.tableView.reloadData()
        dismiss(animated: true, completion: nil)
    }
    
   

}

