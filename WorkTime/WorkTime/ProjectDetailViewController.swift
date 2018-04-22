//
//  ProjectDetailViewController.swift
//  WorkTime
//
//  Created by Szymon Szysz on 22.04.2018.
//  Copyright © 2018 Szymon Szysz. All rights reserved.
//

import UIKit
import Charts


class ProjectDetailViewController: UIViewController {

    @IBOutlet weak var projectDetailTableView: UITableView!
    @IBOutlet weak var chartView: BarChartView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        barChartUpdate()

    }
    
    func barChartUpdate () {
        
        let entry1 = BarChartDataEntry(x: 1.0, y: Double(12))
        let entry2 = BarChartDataEntry(x: 2.0, y: Double(43))
        let entry3 = BarChartDataEntry(x: 3.0, y: Double(83))
        let dataSet = BarChartDataSet(values: [entry1, entry2, entry3], label: "Widgets Type")
        let data = BarChartData(dataSets: [dataSet])
        
        chartView.chartDescription?.text = ""
        chartView.data = data
        chartView.notifyDataSetChanged()
    }
    
    

}



extension ProjectDetailViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 4
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath)
        
        return cell
        
    } 
}
