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
    
    }
    
    func progresValue(projectData: Project) {
        
        let transform = CGAffineTransform(scaleX: 1.0, y: 0.5)
        projectProgressView.transform = transform;
        let time = Float(projectData.time) * 60
        let timePassed: Float = 260
        let value = (timePassed * 100) / time
        projectProgressView.setProgress(value / 100 , animated: true)
        projectPercent.text = String(value.rounded()) + "%"
        
        
    }
    
}
