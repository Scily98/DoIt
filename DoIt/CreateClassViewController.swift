//
//  CreateClassViewController.swift
//  DoIt
//
//  Created by Morgan Gardiner on 14/01/2018.
//  Copyright © 2018 Morgan Gardiner. All rights reserved.
//

import UIKit

class CreateClassViewController: UIViewController {
    
    @IBOutlet weak var importantSwitch: UISwitch!
    @IBOutlet weak var taskNameTextField: UITextField!
    
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
   
    @IBAction func addTapped(_ sender: Any) {
        // create a task from the outlet information
        
        let task = Task()
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        
        // Add new task to array in previous viewcontroller
        
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
        
    }
    

}
