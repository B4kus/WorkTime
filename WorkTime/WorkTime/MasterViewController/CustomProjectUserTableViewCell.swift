//
//  CustomProjectUserTableViewCell.swift
//  WorkTime
//
//  Created by Szymon Szysz on 01.05.2018.
//  Copyright © 2018 Szymon Szysz. All rights reserved.
//

import UIKit

class CustomProjectUserTableViewCell: UITableViewCell {

    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var numberOfTasksLabel: UILabel!
    @IBOutlet weak var percentOfCompletedTaskLabel: UILabel!
    @IBOutlet weak var taskProgressView: UIProgressView!
    
    
    func setText(projectData: Task)  {
        
        userNameLabel.text = projectData.name
        numberOfTasksLabel.text = projectData.priority
      
    }
    
    func progresValue(projectData: Task) {
        
       
        let time = Float(projectData.time) * 60
        let timePassed: Float = 45
        let value = (timePassed * 100) / time
        taskProgressView.setProgress(value / 100 , animated: true)
        percentOfCompletedTaskLabel.text = String(value.rounded()) + "%"
        
        
    }
}
