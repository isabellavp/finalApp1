//
//  AddTaskViewController.swift
//  finalApp1
//
//  Created by Apple on 7/17/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {
    
    var previousVC = TasksTableTableViewController()


   
    @IBOutlet weak var titleTextField: UITextField!
    
    
    @IBOutlet weak var importantSwitch: UISwitch!
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        }
    
  
    @IBAction func addTapped(_ sender: Any) {
        
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
        
            let task = TaskCD(entity: TaskCD.entity(), insertInto: context)
       
            if let titleText = titleTextField.text {
            
            task.name = titleText
            task.important = importantSwitch.isOn
            }
            try? context.save()
  
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
   
    
    
    
    }
    }
        
        
        
        
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    //override func prepare(for segue: UIStoryboardSegue, sender: //Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    

}

