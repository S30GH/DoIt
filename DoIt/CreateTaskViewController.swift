//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Marcus Lindström on 2017-12-07.
//  Copyright © 2017 Marcus Lindström. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var taskNameTextfield: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    var previousVC = TasksViewController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func addTapped(_ sender: Any) {
        // Creat a Task from the outlet information
        
        let task = Task()
        task.name = taskNameTextfield.text!
        task.important = importantSwitch.isOn
        
        // Add new task to array in previous viewController
        previousVC.tasks.append(task)
        
    }
    
}
