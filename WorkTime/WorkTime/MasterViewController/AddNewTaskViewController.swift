//
//  AddNewTaskViewController.swift
//  WorkTime
//
//  Created by Szymon Szysz on 23.04.2018.
//  Copyright © 2018 Szymon Szysz. All rights reserved.
//

import UIKit
protocol AddTaskProtocol {
    func addVC(newData: String)
}

class AddNewTaskViewController: UIViewController {

    @IBOutlet weak var whiteView: UIView!
    var addDelegete: AddTaskProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
   
        
     
//        let blurEffect = UIBlurEffect(style: .dark)
//        let blurEffectView = UIVisualEffectView(effect: blurEffect)
//        blurEffectView.frame = self.view.frame
//        self.view.insertSubview(blurEffectView, at: 0)
        
    }

    
  
    @IBAction func addTaskButton(_ sender: Any) {
        
        addDelegete?.addVC(newData: "oki")
        dismiss(animated: true, completion: nil)
    }
    

 

}
