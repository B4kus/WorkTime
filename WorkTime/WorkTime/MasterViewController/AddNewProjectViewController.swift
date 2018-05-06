//
//  AddNewProjectViewController.swift
//  WorkTime
//
//  Created by Szymon Szysz on 22.04.2018.
//  Copyright © 2018 Szymon Szysz. All rights reserved.
//

import UIKit
import RealmSwift
protocol AddDataViewControllerProtocol {
    func addVC(newData: Project)
}

class AddNewProjectViewController: UIViewController, UITextFieldDelegate {

    
    
    @IBOutlet weak var whiteView: UIView!
    @IBOutlet weak var projectNameTextField: UITextField!
    @IBOutlet weak var clientTextField: UITextField!
    @IBOutlet weak var platformTextField: UITextField!
    @IBOutlet weak var APITextField: UITextField!
    @IBOutlet weak var timeTextField: UITextField!
    @IBOutlet weak var infoTextField: UITextField!
    @IBOutlet weak var addButtonOutlet: UIButton!
    var dataToSave = Project()
    var addDelegete: AddDataViewControllerProtocol?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
      timeTextField.delegate = self
    
    }


    @IBAction func addNewProject(_ sender: Any) {
        
        saveData()
        addDelegete?.addVC(newData: dataToSave)
        dismiss(animated: true, completion: nil)
        
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let allowedNumbers = CharacterSet.decimalDigits
        let characterSet = CharacterSet(charactersIn: string)
        return  allowedNumbers.isSuperset(of: characterSet)
        
        
    }
    func saveData() {
        
        dataToSave.project_id = UUID().uuidString
        dataToSave.name = projectNameTextField.text
        dataToSave.client = clientTextField.text
        dataToSave.platform = platformTextField.text
        dataToSave.time = Int(timeTextField.text!)!
        dataToSave.api = APITextField.text
        dataToSave.info = infoTextField.text
        
    }
        

}
