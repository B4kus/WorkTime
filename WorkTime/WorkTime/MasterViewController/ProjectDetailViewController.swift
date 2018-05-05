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
    
    var dataTable = [Task]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        barChartUpdate()
        vcToAddViewController()
        
    }
    
    @IBAction func dissmissVC(segue: UIStoryboardSegue){}
    
    func barChartUpdate () {
        var dataEntries: [BarChartDataEntry] = []
        for i in 0..<dataTable.count {
            let dataEntry = BarChartDataEntry(x: Double(i), y: Double(21 + i))
            dataEntries.append(dataEntry)
            
        }
        let chartDataSet = BarChartDataSet(values: dataEntries, label: "Visitor count")
        let chartData = BarChartData(dataSet: chartDataSet)
        chartView.data = chartData
        chartView.notifyDataSetChanged()
    }
    
    func vcToAddViewController() {
        
        let vc = AddNewTaskViewController()
        vc.addDelegete = self
        
    }
    
    @IBAction func addNewTask(_ sender: Any) {
        
        let mainStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let vc : AddNewTaskViewController = mainStoryboard.instantiateViewController(withIdentifier: "addTask") as! AddNewTaskViewController
        vc.addDelegete = self
        self.present(vc, animated: true, completion: nil)
        
        
    }
    
}



extension ProjectDetailViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return dataTable.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath) as! CustomProjectUserTableViewCell
        let data = dataTable[indexPath.row]
        cell.setText(projectData: data)
        return cell
        
    } 
}

extension ProjectDetailViewController: AddTaskProtocol {
    func addVC(newData: Task) {
        dataTable.insert(newData, at: 0)
        barChartUpdate()
        projectDetailTableView.reloadData()
        
    }
    
}
