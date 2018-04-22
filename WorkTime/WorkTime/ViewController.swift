//
//  ViewController.swift
//  WorkTime
//
//  Created by Szymon Szysz on 21.04.2018.
//  Copyright © 2018 Szymon Szysz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var whiteView: UIView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var logInOutlet: UIButton!
    @IBOutlet weak var registerOutlet: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        loginConfiguration()
        
        
    }

    @IBAction func dissmissVC(segue: UIStoryboardSegue){}
    
    func loginConfiguration() {
        
        
        whiteView.layer.cornerRadius = 10
        whiteView.layer.shadowOffset = CGSize(width: -10, height: 30)
        whiteView.layer.shadowColor = UIColor.black.cgColor
        whiteView.layer.shadowOpacity = 0.4
        
        emailTextField.layer.cornerRadius = 6
        emailTextField.layer.borderWidth = 0.5
        emailTextField.layer.backgroundColor = UIColor.black.withAlphaComponent(0.1).cgColor
       
        passwordTextField.layer.cornerRadius = 6
        passwordTextField.layer.borderWidth = 0.5
        passwordTextField.layer.backgroundColor = UIColor.black.withAlphaComponent(0.1).cgColor
        
        logInOutlet.layer.borderWidth = 0.5
        logInOutlet.layer.cornerRadius = 6
        
        registerOutlet.layer.borderWidth = 0.5
        registerOutlet.layer.cornerRadius = 6
    
    }
    
    
    
}

