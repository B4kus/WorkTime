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
        
        vcToAddViewController()
    }
    
    @IBAction func dissmissVC(segue: UIStoryboardSegue){}
    
    func barChartUpdate () {
        
        var dataEntries: [BarChartDataEntry] = []
        let timeValue = time()
        for i in 0..<dataTable.count {
            
            let dataEntry = BarChartDataEntry(x: Double(i), y: Double(timeValue[i]))
            dataEntries.append(dataEntry)
            
        }
        
        let chartDataSet = BarChartDataSet(values: dataEntries, label: "Zadana")
        let chartData = BarChartData(dataSet: chartDataSet)
        chartView.chartDescription?.text = "Zadania"
        chartView.data = chartData
        chartView.notifyDataSetChanged()
    }
    func time() -> [Int] {
        var time = [Int]()
        for k in dataTable {
            
            time.append(k.time)
        }
        return time
    }
    
    func vcToAddViewController() {
        
        let vc = AddNewTaskViewController()
        vc.addDelegete = self
        
    }
    func userData() -> [Task] {
        var filterData = [Task]()
        let cell = projectDetailTableView.cellForRow(at: projectDetailTableView.indexPathForSelectedRow!) as! CustomProjectUserTableViewCell
        for data in dataTable {
            
            if data.name == cell.userNameLabel.text {
                
                filterData.append(data)
            }
        }
        
        return filterData
    }
    
    @IBAction func addNewTask(_ sender: Any) {
        
        let mainStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let vc : AddNewTaskViewController = mainStoryboard.instantiateViewController(withIdentifier: "addTask") as! AddNewTaskViewController
        vc.addDelegete = self
        self.present(vc, animated: true, completion: nil)
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        if let detailVC = segue.destination as? UserDetailViewController {
            let data = userData()
            detailVC.setUpData(newData: data)

        }
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
        cell.progresValue(projectData: data)
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
