//
//  CustomTextField.swift
//  WorkTime
//
//  Created by Szymon Szysz on 22.04.2018.
//  Copyright © 2018 Szymon Szysz. All rights reserved.
//

import UIKit

class CustomTextField: UITextField {

    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.cornerRadius = 10
        self.layer.borderWidth = 1
        self.layer.backgroundColor = UIColor.black.withAlphaComponent(0.1).cgColor
        
    }
}
