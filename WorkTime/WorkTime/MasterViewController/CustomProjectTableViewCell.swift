//
//  CustomProjectTableViewCell.swift
//  WorkTime
//
//  Created by Szymon Szysz on 29.04.2018.
//  Copyright © 2018 Szymon Szysz. All rights reserved.
//

import UIKit

class CustomProjectTableViewCell: UITableViewCell {

    
    
    
    @IBOutlet weak var projectName: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var projectPercent: UILabel!
    @IBOutlet weak var projectProgressView: UIProgressView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
