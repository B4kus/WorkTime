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

      
        
    }
    
    
    @IBAction func registerButton(_ sender: Any) {
        
        if (emailTextField.text?.isEmpty)! || (repEmailTextField.text?.isEmpty)! || (passwordTextField.text?.isEmpty)! || (repEmailTextField.text?.isEmpty)! {
            
            let alert = UIAlertController(title: "Puste pola!", message: "Proszę uzupełnić e-mail oraz hasło", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
            
        } else if (emailTextField.text != repEmailTextField.text) {
            
            let alert = UIAlertController(title: "Błąd!", message: "Adresy e-mail nie są takie same.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        } else if  (passwordTextField.text != repPasswordTextField.text) {
            
            let alert = UIAlertController(title: "Błąd!", message: "Hasła nie są takie same.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        } else if ((passwordTextField.text?.count)! <= 8) && (repPasswordTextField.text?.count)! <= 8{
            
            let alert = UIAlertController(title: "Błąd!", message: "Hasło musi mieć minimum 8 znaków", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
         
        } else {
            
            print("good")
            self.dismiss(animated: true, completion: nil)
            
        }
        
        
        
    }
}
