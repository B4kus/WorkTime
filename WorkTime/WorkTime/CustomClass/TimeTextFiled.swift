//
//  TimeTextFiled.swift
//  WorkTime
//
//  Created by Szymon Szysz on 25.05.2018.
//  Copyright © 2018 Szymon Szysz. All rights reserved.
//

import UIKit

class TimeTextFiled: UITextField, UITextFieldDelegate {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.cornerRadius = 10
        self.layer.borderWidth = 1
        self.layer.backgroundColor = UIColor.black.withAlphaComponent(0.1).cgColor
        self.delegate = self
        
    }
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let allowedNumbers = CharacterSet.decimalDigits
        let characterSet = CharacterSet(charactersIn: string)
        return  allowedNumbers.isSuperset(of: characterSet)
        
    }
    
    

}
