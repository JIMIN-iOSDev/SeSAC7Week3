//
//  TravelTableViewCell.swift
//  SeSAC7Week3
//
//  Created by Jimin on 7/14/25.
//

import UIKit

class TravelTableViewCell: UITableViewCell {

    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var travelLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        travelLabel.backgroundColor = .systemYellow
        travelLabel.text = "test"
        travelLabel.font = .boldSystemFont(ofSize: 17)
        
    }

    
}
