//
//  EmployeeTableViewCell.swift
//  mvvm_sample
//
//  Created by Faris Muhammed on 02/11/21.
//

import UIKit

class EmployeeTableViewCell: UITableViewCell {

    @IBOutlet weak var empIDLabel: UILabel!
    @IBOutlet weak var empNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
