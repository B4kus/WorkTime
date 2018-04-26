//
//  WhiteUIView.swift
//  WorkTime
//
//  Created by Szymon Szysz on 26.04.2018.
//  Copyright © 2018 Szymon Szysz. All rights reserved.
//

import UIKit

class WhiteUIView: UIView {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.cornerRadius = 10
        self.layer.shadowOffset = CGSize(width: -10, height: 30)
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.4
        
    }

}
