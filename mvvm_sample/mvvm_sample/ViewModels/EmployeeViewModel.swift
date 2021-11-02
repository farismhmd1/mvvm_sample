//
//  EmployeeViewModel.swift
//  mvvm_sample
//
//  Created by Faris Muhammed on 01/11/21.
//

import Foundation

class EmployeeViewModel: NSObject {
    
    private var apiService: APIService?
    private(set) var empData: Employee? {
        
        didSet {
            self.bindEmployeeViewModelToController()
        }
        
    }
    var bindEmployeeViewModelToController : (() -> ()) = {}
    
    
    override init() {
        super.init()
        
        self.apiService = APIService()
        
        self.callToGetEmployeeData()
    }
    
    
    func callToGetEmployeeData() {
        
        
        self.apiService?.apiToGetEmployeeData(completion: { employee in
            
            self.empData = employee
            
        })
    }
    
    
}
