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
    
    
    
    func setText(projectData: Project) {
    
        projectName.text = projectData.name
        statusLabel.text = "Aktywne"
        projectProgressView.progress = Float(projectData.time)
        projectPercent.text = String(projectProgressView.progress * 100)
    
    }
    
}
