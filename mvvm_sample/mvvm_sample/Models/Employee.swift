//
//  Employee.swift
//  mvvm_sample
//
//  Created by Faris Muhammed on 01/11/21.
//

//   let employee = try? newJSONDecoder().decode(Employee.self, from: jsonData)


import Foundation

// MARK: - Employee
struct Employee: Codable {
    var status: String?
    var data: [EmployeeData]?
    var message: String?
}

// MARK: - Datum
struct EmployeeData: Codable {
    var id: Int?
    var employeeName: String?
    var employeeSalary, employeeAge: Int?
    var profileImage: String?

    enum CodingKeys: String, CodingKey {
        case id
        case employeeName = "employee_name"
        case employeeSalary = "employee_salary"
        case employeeAge = "employee_age"
        case profileImage = "profile_image"
    }
}
