//
//  ViewController.swift
//  mvvm_sample
//
//  Created by Faris Muhammed on 01/11/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    private var employeeViewModel: EmployeeViewModel?
    
    private var dataSource : EmployeeTableViewDataSource<EmployeeTableViewCell,EmployeeData>?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        callToViewModelForUIUpdate()
    }
    
    
    func callToViewModelForUIUpdate() {
        self.employeeViewModel = EmployeeViewModel()
        
        
        self.employeeViewModel?.bindEmployeeViewModelToController = {
            
            self.updateDataSource()
        }
    }

    
    func updateDataSource() {
        
        if let empData =  self.employeeViewModel?.empData?.data {
            self.dataSource = EmployeeTableViewDataSource(cellIdentifier: "EmployeeTableViewCell", items: empData, configureCell: { cell,evm in
                // Setup cell ui
                cell.empIDLabel.text = "\(evm.id ?? 0)"
                cell.empNameLabel.text = evm.employeeName ?? ""
            })
        }
        else {
            self.dataSource = nil
            // for showing empty message
        }
        DispatchQueue.main.async {
            self.tableView.dataSource = self.dataSource
            self.tableView.reloadData()
        }
        
        
        
    }
    

}

