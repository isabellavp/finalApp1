//
//  CompleteTaskViewController.swift
//  finalApp1
//
//  Created by Apple on 7/17/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

    var previousVC = TasksTableTableViewController()
    var selectedTask : TaskCD?
   // var selectedToDo : ToDoCD?
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = selectedTask?.name
    }
    
   
    @IBAction func completeTapped(_ sender: Any) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
        if let theTask = selectedTask {
            context.delete(theTask)
            navigationController?.popViewController(animated: true)
            }
            
        }
    
    }
//    completeTapped(_ sender: Any) {
//    if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
//    if let theToDo = selectedToDo {
//    context.delete(theToDo)
//    navigationController?.popViewController(animated: true)
//    }
//    }
//    }
    
    
//    @IBAction func completeTapped(_ sender: Any) {
//        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
//            if let theToDo = selectedToDo {
//                context.delete(theToDo)
//                navigationController?.popViewController(animated: true)
//            }
//        }
//    }
    

}
