//
//  ViewController.swift
//  Aging People
//
//  Created by Ryan Munguia on 3/14/17.
//  Copyright © 2017 Ryan Munguia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let people = ["George", "Betty", "Fran", "Joe", "Helda", "Winfred", "Zed", "Sara", "Jeffry", "Abraham", "Anna", "Melinda"]
        

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
//snippet this
extension ViewController: UITableViewDataSource {
  //snippet this - in order to be a tableViewData Source, you need these two things.
    //how many rows are in each section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
            return people.count
    }
     //what to put in each cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonCell", for: indexPath)
        cell.textLabel?.text = self.people[indexPath.row]
        
        let age = arc4random_uniform(95-5) + 5
        //any number between 5 and 95
        cell.detailTextLabel?.text =  "\(age) years old"
        
        return cell
        
        
    }
    
}

