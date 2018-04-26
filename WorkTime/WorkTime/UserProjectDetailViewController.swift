//
//  UserProjectDetailViewController.swift
//  WorkTime
//
//  Created by Szymon Szysz on 26.04.2018.
//  Copyright © 2018 Szymon Szysz. All rights reserved.
//

import UIKit
import Charts

class UserProjectDetailViewController: UIViewController {

    
    @IBOutlet weak var chartsView: BarChartView!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        barChartUpdate()
    }

    func barChartUpdate () {
        
        let entry1 = BarChartDataEntry(x: 1.0, y: Double(100))
        let entry2 = BarChartDataEntry(x: 2.0, y: Double(68))
        let entry3 = BarChartDataEntry(x: 3.0, y: Double(10))
        let dataSet = BarChartDataSet(values: [entry1, entry2, entry3], label: "Widgets Type")
        let data = BarChartData(dataSets: [dataSet])
        
        chartsView.chartDescription?.text = ""
        chartsView.data = data
        chartsView.notifyDataSetChanged()
    }
    


}


extension UserProjectDetailViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "projectDetailCell", for: indexPath)
        
        return cell
    }
}
