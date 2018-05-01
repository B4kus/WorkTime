//
//  MainMasterViewController.swift
//  WorkTime
//
//  Created by Szymon Szysz on 22.04.2018.
//  Copyright © 2018 Szymon Szysz. All rights reserved.
//

import UIKit

class MainMasterViewController: UIViewController {

    @IBOutlet weak var mainTableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainTableView.estimatedRowHeight = 120
        mainTableView.rowHeight = 120
        vcToAddViewController()
    }

    
    
    func vcToAddViewController() {
        
        let vc = AddNewProjectViewController()
        vc.addDelegete = self
        
    }
    
   @IBAction func dissmissVC(segue: UIStoryboardSegue){}
    
    @IBAction func addNewProject(_ sender: Any) {
        
        let mainStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let vc : AddNewProjectViewController = mainStoryboard.instantiateViewController(withIdentifier: "AddView") as! AddNewProjectViewController
        vc.addDelegete = self
        self.present(vc, animated: true, completion: nil)
        
        
    }
}


extension MainMasterViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 4
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomProjectTableViewCell
        return cell
        
    }
}

extension MainMasterViewController: AddDataViewControllerProtocol {
    func addVC(newData: String) {
        print("hello")
        // TO DO add to table and reload data
    }
 
}
