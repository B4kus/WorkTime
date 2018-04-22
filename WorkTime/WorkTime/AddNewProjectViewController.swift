//
//  AddNewProjectViewController.swift
//  WorkTime
//
//  Created by Szymon Szysz on 22.04.2018.
//  Copyright © 2018 Szymon Szysz. All rights reserved.
//

import UIKit

class AddNewProjectViewController: UIViewController {

    
    
    @IBOutlet weak var whiteView: UIView!
    @IBOutlet weak var projectNameTextField: UITextField!
    @IBOutlet weak var clientTextField: UITextField!
    @IBOutlet weak var platformTextField: UITextField!
    @IBOutlet weak var APITextField: UITextField!
    @IBOutlet weak var timeTextField: UITextField!
    @IBOutlet weak var infoTextField: UITextField!
    @IBOutlet weak var addButtonOutlet: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addConfiguration()
    
    }


    func addConfiguration() {
        
        whiteView.layer.cornerRadius = 10
        whiteView.layer.shadowOffset = CGSize(width: -10, height: 30)
        whiteView.layer.shadowColor = UIColor.black.cgColor
        whiteView.layer.shadowOpacity = 0.4
        
        projectNameTextField.layer.cornerRadius = 6
        projectNameTextField.layer.borderWidth = 0.5
        projectNameTextField.layer.backgroundColor = UIColor.black.withAlphaComponent(0.1).cgColor
        
        clientTextField.layer.cornerRadius = 6
        clientTextField.layer.borderWidth = 0.5
        clientTextField.layer.backgroundColor = UIColor.black.withAlphaComponent(0.1).cgColor
        
        platformTextField.layer.cornerRadius = 6
        platformTextField.layer.borderWidth = 0.5
        platformTextField.layer.backgroundColor = UIColor.black.withAlphaComponent(0.1).cgColor
        
        APITextField.layer.cornerRadius = 6
        APITextField.layer.borderWidth = 0.5
        APITextField.layer.backgroundColor = UIColor.black.withAlphaComponent(0.1).cgColor
        
        timeTextField.layer.cornerRadius = 6
        timeTextField.layer.borderWidth = 0.5
        timeTextField.layer.backgroundColor = UIColor.black.withAlphaComponent(0.1).cgColor
        
        infoTextField.layer.cornerRadius = 6
        infoTextField.layer.borderWidth = 0.5
        infoTextField.layer.backgroundColor = UIColor.black.withAlphaComponent(0.1).cgColor
        
        addButtonOutlet.layer.borderWidth = 0.5
        addButtonOutlet.layer.cornerRadius = 6
        
        
    }
}
