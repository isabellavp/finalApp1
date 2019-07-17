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
    

}
