//
//  RedTableViewCell.swift
//  tableView_Itea
//
//  Created by Anastasia Bilous on 2022-05-31.
//

import UIKit

class RedTableViewCell: UITableViewCell {

    @IBOutlet weak var cvImageView: UIImageView!
    @IBOutlet weak var cvNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
}
