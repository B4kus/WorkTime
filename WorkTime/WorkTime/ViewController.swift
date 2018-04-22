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
    
    }
}

