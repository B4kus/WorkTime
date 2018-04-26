//
//  OrangeCustomButton.swift
//  WorkTime
//
//  Created by Szymon Szysz on 22.04.2018.
//  Copyright © 2018 Szymon Szysz. All rights reserved.
//

import UIKit

class OrangeCustomButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.borderWidth = 1
        self.layer.cornerRadius = 16
        self.backgroundColor = UIColor(red: 1, green: 127/255, blue: 80/255, alpha: 1)
        
    }
    
    

}
