//
//  CustomProgressView.swift
//  WorkTime
//
//  Created by Szymon Szysz on 19.05.2018.
//  Copyright © 2018 Szymon Szysz. All rights reserved.
//

import UIKit

class CustomProgressView: UIProgressView {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let transform = CGAffineTransform(scaleX: 1.0, y: 0.5)
        self.transform = transform
        
    }
}
