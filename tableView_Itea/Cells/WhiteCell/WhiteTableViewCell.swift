//
//  WhiteTableViewCell.swift
//  tableView_Itea
//
//  Created by Anastasia Bilous on 2022-05-31.
//

import UIKit

class WhiteTableViewCell: UITableViewCell {

    @IBOutlet weak var swiftImageView: UIImageView!
    @IBOutlet weak var gitImageView: UIImageView!
    @IBOutlet weak var swiftLabel: UILabel!
    @IBOutlet weak var gitLabel: UILabel!
    @IBOutlet var starViewCollection: [UIImageView]!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
}
