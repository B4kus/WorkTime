//
//  UserViewController.swift
//  WorkTime
//
//  Created by Szymon Szysz on 22.04.2018.
//  Copyright © 2018 Szymon Szysz. All rights reserved.
//

import UIKit

class UserViewController: UIViewController {

    @IBOutlet weak var whiteView: UIView!
    @IBOutlet weak var profilePictureImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       UserViewConfiguration()
        
    }

    func UserViewConfiguration() {
        
        profilePictureImageView.layer.cornerRadius = 10
        profilePictureImageView.layer.backgroundColor = UIColor.white.withAlphaComponent(0.7).cgColor
        
        
    }
}
