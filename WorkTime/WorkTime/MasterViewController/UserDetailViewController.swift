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
    
    var newData = [Task]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        userImageView.layer.cornerRadius = userImageView.frame.size.width / 2
        
        phoneOutlet.isUserInteractionEnabled = true;
        let tap = UITapGestureRecognizer(target: self, action:#selector(self.phoneNumberLabelTap))
        phoneOutlet.addGestureRecognizer(tap)
        let tapEmail = UITapGestureRecognizer(target: self, action:#selector(self.emailLabelTap))
        emailOutlet.addGestureRecognizer(tapEmail)
        userDetailTableView.reloadData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        for k in newData {
            
            userNameOutlet.text = k.name
            
        }
        barChartUpdate()
        
        
    }

    func barChartUpdate () {
        
        var dataEntries: [BarChartDataEntry] = []
        let validTime = time()
        for i in 0..<newData.count {
            let dataEntry = BarChartDataEntry(x: Double(i), y: Double(validTime[i]))
            dataEntries.append(dataEntry)
            
        }
        let chartDataSet = BarChartDataSet(values: dataEntries, label: "Zadania")
        let chartData = BarChartData(dataSet: chartDataSet)
        chartView.chartDescription?.text = "Twoje aktulane zadania w projekcie "
        chartView.data = chartData
        chartView.notifyDataSetChanged()
    }
    
    func time() -> [Int] {
        var time = [Int]()
        for k in newData {
            
            time.append(k.time)
        }
        return time
    }
    
    func setUpData(newData: [Task]) {
        
        self.newData = newData
        
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
        return newData.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userCell", for: indexPath) as! CustomUserTaskTableViewCell
        let dataToUse = newData[indexPath.row]
        cell.setUpData(data: dataToUse)
        
        return cell
    }
  
}
