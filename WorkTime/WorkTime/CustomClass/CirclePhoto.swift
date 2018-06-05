//
//  CirclePhoto.swift
//  WorkTime
//
//  Created by Szymon Szysz on 19.05.2018.
//  Copyright © 2018 Szymon Szysz. All rights reserved.
//

import UIKit

class CirclePhoto: UIImageView {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.cornerRadius = self.frame.size.width / 2
      
        
    }

}
