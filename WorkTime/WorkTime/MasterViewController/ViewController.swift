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
       
      
    
    }
    
    @IBAction func logInButton(_ sender: Any) {
        
        if (emailTextField.text?.isEmpty)! || (passwordTextField.text?.isEmpty)! {
            
            let alert = UIAlertController(title: "Puste pola!", message: "Proszę uzupełnić e-mail lub hasło", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        } else if (emailTextField.text != "szymon") || (passwordTextField.text != "szymon") {
            
            let alert = UIAlertController(title: "Błąd", message: "Błędny adres e-mail lub hasło,", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        } else {
            
            print("okey ")
            
        }
        
        
    }
    
    
    @IBAction func dissmissVC(segue: UIStoryboardSegue){}
    

}

