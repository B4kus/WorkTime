//
//  UserDetailViewController.swift
//  WorkTime
//
//  Created by Szymon Szysz on 22.04.2018.
//  Copyright © 2018 Szymon Szysz. All rights reserved.
//

import UIKit

class UserDetailViewController: UIViewController {

    @IBOutlet weak var userDetailTableView: UITableView!
    @IBOutlet weak var userNameOutlet: UILabel!
    @IBOutlet weak var emailOutlet: UILabel!
    @IBOutlet weak var phoneOutlet: UILabel!
    @IBOutlet weak var userImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    userImageView.layer.cornerRadius = userImageView.frame.size.width / 2
    }


    
    

}
extension UserDetailViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userCell", for: indexPath)
        
        return cell
    }
  
}
