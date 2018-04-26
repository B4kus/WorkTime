//
//  UserMainViewController.swift
//  WorkTime
//
//  Created by Szymon Szysz on 26.04.2018.
//  Copyright © 2018 Szymon Szysz. All rights reserved.
//

import UIKit

class UserMainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
 @IBAction func dissmissVC(segue: UIStoryboardSegue){}

}

extension UserMainViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "projectCell", for: indexPath)
        
        return cell
        
    }
}
