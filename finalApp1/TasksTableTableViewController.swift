//
//  TasksTableTableViewController.swift
//  finalApp1
//
//  Created by Apple on 7/17/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class TasksTableTableViewController: UITableViewController {
    
    func createTasks () -> [Tasks] {
        let swift = Tasks()
        swift.name = "Learn Swift"
        swift.important = true
        
        let dog = Tasks ()
        dog.name = "Walk the dog"
        
        return [swift, dog]
    }

    var tasks : [Tasks] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tasks = createTasks()
        
    }

    // MARK: - Table view data source

   override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
     return tasks.count
    }

    
   override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
    
    let task = tasks [indexPath.row]

    
    if task.important {
        cell.textLabel?.text = "❗️" + task.name
    } else {
        cell.textLabel?.text = task.name
    }
    
    return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        if let addVC = segue.destination as? AddTaskViewController{
            addVC.previousVC = self
        }

        if let completeVC = segue.destination as? CompleteTaskViewController {
            if let task = sender as? Tasks {
                
                completeVC.selectedTask = task
                completeVC.previousVC = self
        
        
        func tableView (_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            
            let task = tasks [indexPath.row]
            
           performSegue(withIdentifier: "moveToComplete", sender: task)
            
            if let addVC = segue.destination as? AddTaskViewController {
            addVC.previousVC = self

        

         
               
        
    }
   }
  }
 }
}
}
