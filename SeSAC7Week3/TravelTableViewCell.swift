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
        
        // 모든 셀마다 똑같은 디자인인 부분
        travelLabel.backgroundColor = .systemYellow
        travelLabel.text = "test"
        travelLabel.font = .boldSystemFont(ofSize: 17)
        travelLabel.numberOfLines = 0
        travelLabel.backgroundColor = .clear
        dateLabel.backgroundColor = .clear
        
    }
    
    // 아래 세개를 이렇게 한방에 쓰기도 함
    func configure(row: Travel) {
        travelLabel.text = row.overview
        dateLabel.text = row.name
        
        if row.like {
            backgroundColor = .yellow
        } else {
            backgroundColor = .clear
        }
    }

//    func configureTravelLabel(row: Travel) {
//        travelLabel.text = row.overview
//        travelLabel.numberOfLines = 0
//        travelLabel.backgroundColor = .clear
//    }
//    
//    func configureBackground(row: Travel) {
//        if row.like {
//            backgroundColor = .yellow
//        } else {
//            backgroundColor = .clear
//        }
//    }
//    
//    func configureDateLabel(row: Travel) {
//        dateLabel.text = row.name
//        dateLabel.backgroundColor = .clear
//    }
    
}
