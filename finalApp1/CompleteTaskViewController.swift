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
    var selectedTask = Tasks()
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = selectedTask.name
    }
    
    @IBAction func completeTapped(_ sender: Any) {
    
    }
   
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
