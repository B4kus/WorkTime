//
//  AddNewProjectViewController.swift
//  WorkTime
//
//  Created by Szymon Szysz on 22.04.2018.
//  Copyright © 2018 Szymon Szysz. All rights reserved.
//

import UIKit

protocol AddDataViewControllerProtocol {
    func addVC(newData: String)
}

class AddNewProjectViewController: UIViewController {

    
    
    @IBOutlet weak var whiteView: UIView!
    @IBOutlet weak var projectNameTextField: UITextField!
    @IBOutlet weak var clientTextField: UITextField!
    @IBOutlet weak var platformTextField: UITextField!
    @IBOutlet weak var APITextField: UITextField!
    @IBOutlet weak var timeTextField: UITextField!
    @IBOutlet weak var infoTextField: UITextField!
    @IBOutlet weak var addButtonOutlet: UIButton!
    var addDelegete: AddDataViewControllerProtocol?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
    
    }


    @IBAction func addNewProject(_ sender: Any) {
        addDelegete?.addVC(newData: "tak")
        
    }
    
        

}
