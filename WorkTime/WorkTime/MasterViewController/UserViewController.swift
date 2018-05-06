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
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    
    var userData = User()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        UserViewConfiguration()
        setUpView(data: userData)
        
    }

    func UserViewConfiguration() {
        
        profilePictureImageView.layer.cornerRadius = 10
        profilePictureImageView.layer.backgroundColor = UIColor.white.withAlphaComponent(0.7).cgColor
        
        
    }
    
    func setUpData(userData: User) {
    
        self.userData = userData
    
    }
    
    func setUpView(data: User) {
        
        nameLabel.text = data.name
        emailLabel.text = data.email
        passwordLabel.text = data.password
        phoneNumberLabel.text = data.phone
        
    }
    
    
}
