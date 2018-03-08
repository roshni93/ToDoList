//
//  ViewController.swift
//  ToDoList
//
//  Created by Roshni Baranwal on 08/03/18.
//  Copyright © 2018 Roshni Baranwal. All rights reserved.
//

import UIKit

//UITableViewController this is the super class of tableView bcoz of this we donot have to import any delegate or datasource
class ToDoListViewController: UITableViewController {

    let itemArray = ["Find HAppiness", "Find Peace" , "Go And Learn"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

//MARK - TableView DataSource Methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //to deqeue the cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        //current row of current indexPath name to visible
        cell.textLabel?.text = itemArray[indexPath.row]
        
        
        return cell
    }

//MARK - TableView Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(itemArray[indexPath.row])
        
        //for  checkMarking
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }
        else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        //to deselect the row after clicking 1ce
            tableView.deselectRow(at: indexPath, animated: true)
        
        
    }

}

