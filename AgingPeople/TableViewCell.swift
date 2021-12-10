//
//  TableViewCell.swift
//  AgingPeople
//
//  Created by admin on 10/12/2021.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
