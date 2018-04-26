//
//  UserDetailViewController.swift
//  WorkTime
//
//  Created by Szymon Szysz on 22.04.2018.
//  Copyright © 2018 Szymon Szysz. All rights reserved.
//

import UIKit
import Charts

class UserDetailViewController: UIViewController {

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
