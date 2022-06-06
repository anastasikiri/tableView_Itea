//
//  GreenTableViewCell.swift
//  tableView_Itea
//
//  Created by Anastasia Bilous on 2022-05-31.
//

import UIKit

class GreenTableViewCell: UITableViewCell {

    @IBOutlet weak var yearsLabel: UILabel!
    @IBOutlet weak var companyNameLabel: UILabel!
    @IBOutlet weak var occupationNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
      
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
  
    }
}
