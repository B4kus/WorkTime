//
//  RegisterViewController.swift
//  WorkTime
//
//  Created by Szymon Szysz on 22.04.2018.
//  Copyright © 2018 Szymon Szysz. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    
    @IBOutlet weak var whiteView: UIView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var repEmailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var repPasswordTextField: UITextField!
    @IBOutlet weak var companyCodeTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        registerConfiguration()
        
    }
    
    
    func registerConfiguration() {
        
        whiteView.layer.cornerRadius = 10
        whiteView.layer.shadowOffset = CGSize(width: -10, height: 30)
        whiteView.layer.shadowColor = UIColor.black.cgColor
        whiteView.layer.shadowOpacity = 0.4
        
        emailTextField.layer.cornerRadius = 6
        emailTextField.layer.borderWidth = 0.5
        emailTextField.layer.backgroundColor = UIColor.black.withAlphaComponent(0.1).cgColor
        
        repEmailTextField.layer.cornerRadius = 6
        repEmailTextField.layer.borderWidth = 0.5
        repEmailTextField.layer.backgroundColor = UIColor.black.withAlphaComponent(0.1).cgColor
        
        passwordTextField.layer.cornerRadius = 6
        passwordTextField.layer.borderWidth = 0.5
        passwordTextField.layer.backgroundColor = UIColor.black.withAlphaComponent(0.1).cgColor
        
        repPasswordTextField.layer.cornerRadius = 6
        repPasswordTextField.layer.borderWidth = 0.5
        repPasswordTextField.layer.backgroundColor = UIColor.black.withAlphaComponent(0.1).cgColor
        
        companyCodeTextField.layer.cornerRadius = 6
        companyCodeTextField.layer.borderWidth = 0.5
        companyCodeTextField.layer.backgroundColor = UIColor.black.withAlphaComponent(0.1).cgColor
        
        
    }

}
