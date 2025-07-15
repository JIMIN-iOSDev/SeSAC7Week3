//
//  TravelTableViewCell.swift
//  SeSAC7Week3
//
//  Created by Jimin on 7/14/25.
//

import UIKit

class TravelTableViewCell: UITableViewCell {

    static let identifier = "TravelTableViewCell"  // 타입 프로퍼티 - 인스턴스를 아무리 생성해도 얘는 하나의 공간만 쓴다. 호출하지 않으면 공간을 차지하지 않는데 한 번이라도 부르면 앱이 종료될 때까지 계속 공간을 차지함. 데이터에 저장됨
    
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var travelLabel: UILabel!
    
//    let color = Color()   // Resource에서 인스턴스 저장 프로퍼티 형식으로 작성했을 때
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // 모든 셀마다 똑같은 디자인인 부분
        dateLabel.backgroundColor = Color.jackRed   // 타입 저장 프로퍼티 형식으로 작성했을 때
        travelLabel.backgroundColor = .systemYellow
        travelLabel.text = "test"
        travelLabel.font = .boldSystemFont(ofSize: 17)
        travelLabel.numberOfLines = 0
        travelLabel.backgroundColor = .clear
        
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
