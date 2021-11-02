//
//  APIService.swift
//  mvvm_sample
//
//  Created by Faris Muhammed on 01/11/21.
//

import Foundation

class APIService: NSObject {
    
    private let sourcesURL = URL(string: "http://dummy.restapiexample.com/api/v1/employees")!

    override init() {
        super.init()
        
        
        
    }
    
    
    //   let employee = try? newJSONDecoder().decode(Employee.self, from: jsonData)
    func apiToGetEmployeeData(completion : @escaping (Employee?) -> ()) {
        
        URLSession.shared.dataTask(with: sourcesURL) { data, respone, error in
            
            if let data = data {
                
                
                if let empData = try? JSONDecoder().decode(Employee.self, from: data) {
                    
                    completion(empData)
                }
                else {
                    completion(nil)
                }
            }
            else {
                completion(nil)
            }
            
        }.resume()
    }
}
