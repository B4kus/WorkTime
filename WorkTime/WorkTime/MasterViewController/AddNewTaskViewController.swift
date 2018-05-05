//
//  AddNewTaskViewController.swift
//  WorkTime
//
//  Created by Szymon Szysz on 23.04.2018.
//  Copyright © 2018 Szymon Szysz. All rights reserved.
//

import UIKit
protocol AddTaskProtocol {
    func addVC(newData: Task)
}

class AddNewTaskViewController: UIViewController {

    @IBOutlet weak var whiteView: UIView!
    @IBOutlet weak var personTextField: CustomTextField!
    @IBOutlet weak var taskTextField: CustomTextField!
    @IBOutlet weak var timeTextField: CustomTextField!
    @IBOutlet weak var priorityTextField: CustomTextField!
    @IBOutlet weak var infoTextField: CustomTextField!
    
    
    var addDelegete: AddTaskProtocol?
    var dataToSave = Task()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    func saveData() {
        
        dataToSave.name = personTextField.text
        dataToSave.task =  taskTextField.text
        dataToSave.time =  Int(timeTextField.text!)!
        dataToSave.priority = priorityTextField.text
        dataToSave.extraInfo =  infoTextField.text
        
    }
  
    @IBAction func addTaskButton(_ sender: Any) {
        
        saveData()
        addDelegete?.addVC(newData: dataToSave)
        dismiss(animated: true, completion: nil)
    }
    

}
