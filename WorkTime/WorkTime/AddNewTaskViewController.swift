//
//  AddNewTaskViewController.swift
//  WorkTime
//
//  Created by Szymon Szysz on 23.04.2018.
//  Copyright © 2018 Szymon Szysz. All rights reserved.
//

import UIKit

class AddNewTaskViewController: UIViewController {

    @IBOutlet weak var whiteView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        UserViewConfiguration()
    }


    
    func UserViewConfiguration() {
        
        whiteView.layer.cornerRadius = 10
        whiteView.layer.shadowOffset = CGSize(width: -10, height: 30)
        whiteView.layer.shadowColor = UIColor.black.cgColor
        whiteView.layer.shadowOpacity = 0.4
    
        
    }
 

}
