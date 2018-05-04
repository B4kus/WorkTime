//
//  AddNewTaskViewController.swift
//  WorkTime
//
//  Created by Szymon Szysz on 23.04.2018.
//  Copyright © 2018 Szymon Szysz. All rights reserved.
//

import UIKit
protocol AddTaskProtocol {
    func addVC(newData: String)
}

class AddNewTaskViewController: UIViewController {

    @IBOutlet weak var whiteView: UIView!
    @IBOutlet weak var personTextField: CustomTextField!
    @IBOutlet weak var taskTextField: CustomTextField!
    @IBOutlet weak var timeTextField: CustomTextField!
    @IBOutlet weak var priorityTextField: CustomTextField!
    @IBOutlet weak var infoTextField: CustomTextField!
    var addDelegete: AddTaskProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    func saveData() {
        
        personTextField.text = "Model"
        taskTextField.text = "Model"
        timeTextField.text = "Model"
        priorityTextField.text = "Model"
        infoTextField.text = "Model"
        
    }
  
    @IBAction func addTaskButton(_ sender: Any) {
        
        //saveData()
        addDelegete?.addVC(newData: "oki")
        dismiss(animated: true, completion: nil)
    }
    

}
