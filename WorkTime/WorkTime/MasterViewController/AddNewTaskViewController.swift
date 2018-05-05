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

class AddNewTaskViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var whiteView: UIView!
    @IBOutlet weak var personTextField: CustomTextField!
    @IBOutlet weak var taskTextField: CustomTextField!
    @IBOutlet weak var timeTextField: CustomTextField!
    @IBOutlet weak var priorityTextField: CustomTextField!
    @IBOutlet weak var infoTextField: CustomTextField!
    
    
    let thePicker = UIPickerView()
    var addDelegete: AddTaskProtocol?
    var dataToSave = Task()
    let myPickerData = [String](arrayLiteral: "Niski", "Normalny", "Duży")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        priorityTextField.inputView = thePicker
        thePicker.delegate = self
        priorityTextField.delegate = self
        
    }

    func saveData() {
        
        dataToSave.name = personTextField.text
        dataToSave.task =  taskTextField.text
        dataToSave.time =  Int(timeTextField.text!)!
        dataToSave.priority = priorityTextField.text
        dataToSave.extraInfo =  infoTextField.text
        
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return false
    }
  
    @IBAction func addTaskButton(_ sender: Any) {
        
        saveData()
        addDelegete?.addVC(newData: dataToSave)
        dismiss(animated: true, completion: nil)
        
    }
    

}

extension AddNewTaskViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView( _ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return myPickerData.count
    }
    
    func pickerView( _ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return myPickerData[row]
    }
    
    func pickerView( _ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        priorityTextField.text = myPickerData[row]
        self.view.endEditing(true)
    }  
}
