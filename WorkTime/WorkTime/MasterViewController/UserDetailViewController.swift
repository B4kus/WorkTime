//
//  UserDetailViewController.swift
//  WorkTime
//
//  Created by Szymon Szysz on 22.04.2018.
//  Copyright © 2018 Szymon Szysz. All rights reserved.
//

import UIKit
import Charts
import Social
import MessageUI

class UserDetailViewController: UIViewController, MFMailComposeViewControllerDelegate {

    @IBOutlet weak var userDetailTableView: UITableView!
    @IBOutlet weak var userNameOutlet: UILabel!
    @IBOutlet weak var emailOutlet: UILabel!
    @IBOutlet weak var phoneOutlet: UILabel!
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var chartView: BarChartView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        barChartUpdate()
        userImageView.layer.cornerRadius = userImageView.frame.size.width / 2
        
        phoneOutlet.isUserInteractionEnabled = true;
        let tap = UITapGestureRecognizer(target: self, action:#selector(self.phoneNumberLabelTap))
        phoneOutlet.addGestureRecognizer(tap)
        let tapEmail = UITapGestureRecognizer(target: self, action:#selector(self.emailLabelTap))
        emailOutlet.addGestureRecognizer(tapEmail)
        
    }

    func barChartUpdate () {
        
        let entry1 = BarChartDataEntry(x: 1.0, y: Double(100))
        let entry2 = BarChartDataEntry(x: 2.0, y: Double(68))
        let entry3 = BarChartDataEntry(x: 3.0, y: Double(10))
        let dataSet = BarChartDataSet(values: [entry1, entry2, entry3], label: "Widgets Type")
        let data = BarChartData(dataSets: [dataSet])
        
        chartView.chartDescription?.text = ""
        chartView.data = data
        chartView.notifyDataSetChanged()
    }
    
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        
        if result == .saved {
            
        } else if result == .sent {
            
        }
        
        controller.dismiss(animated: true, completion: nil)
        
    }
    
    @objc func phoneNumberLabelTap() {
        if let validPhone = phoneOutlet.text?.replacingOccurrences(of: " ", with: "") , let phoneCallURL = URL(string: "tel://\(String(describing: validPhone))") {
            
            let application:UIApplication = UIApplication.shared
            if (application.canOpenURL(phoneCallURL)) {
                application.open(phoneCallURL, options: [:], completionHandler: nil)
                
            }
        }
    }
    
    @objc func emailLabelTap() {
        
        if MFMailComposeViewController.canSendMail() {
            
            let emialVC = MFMailComposeViewController()
            emialVC.mailComposeDelegate = self
            if let validEmail = emailOutlet.text {
                
                emialVC.setToRecipients(["\(String(describing: validEmail))"])
                
            }
            present(emialVC, animated: true)
            
        }
    
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
