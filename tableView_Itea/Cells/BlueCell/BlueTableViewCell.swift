//
//  BlueTableViewCell.swift
//  tableView_Itea
//
//  Created by Anastasia Bilous on 2022-05-31.
//

import UIKit

class BlueTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cvDetailsImageView: UIImageView!
    @IBOutlet weak var cvDetailsLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
}
