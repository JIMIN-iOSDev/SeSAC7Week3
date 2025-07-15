//
//  TravelTableViewController.swift
//  SeSAC7Week3
//
//  Created by Jimin on 7/14/25.
//

import UIKit

struct Travel {
    let name: String
    let overview: String
    let date: String
    let like: Bool
}

class TravelTableViewController: UITableViewController {

    let nickname = "고래밥"
    let format = DateFormatter()    // DateFormatter()는 연산 비용, 인스턴스 생성 비용이 크다 -> cellForRowAt에 작성하는 것보다 여기 작성하면 공간을 덜 만든다. cellForRowAt에 작성하면 같은 내용인데 매번 불려지게 되기 때문에
    
    let travel = [
        Travel(name: "서울", overview: "선유도공원 좋아요", date: "250401", like: false),
        Travel(name: "대전", overview: "whgdkdy", date: "250101", like: true),
        Travel(name: "대구", overview: "gg", date: "251201", like: true),
        Travel(name: "부산", overview: "ggg", date: "250813", like: false),
        Travel(name: "광주", overview: "asepa", date: "250505", like: false)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setBackground()

        // XIB Cell로 (외부에서 셀을) 구성하는 순간 필요한 코드
        let xib = UINib(nibName: TravelTableViewCell.identifier, bundle: nil)    // 외부에서 만든 파일을 가져올 때 쓰는게 bundle. 지금은 우리가 만든 파일에서 쓰기 때문에 nil 쓰면 됨
        tableView.register(xib, forCellReuseIdentifier: TravelTableViewCell.identifier)
        
        // 조건 없이 전체 테이블뷰에 적용할 때
        tableView.rowHeight = UITableView.automaticDimension
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return travel.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TravelTableViewCell.identifier, for: indexPath) as! TravelTableViewCell
        
        // DateFormatter() 위치 설명을 위한 주석
//        format.dateFormat = "yy년 MM월 dd일 hh시"
//        let value = format.string(from: Date())
        
        
//        let row = travel[indexPath.row] // 중복되는 코드 묶어냄
//        cell.configureTravelLabel(row: row)
//        cell.configureBackground(row: row)
//        cell.configureDateLabel(row: row)
        
        // 최종적으로 가장 줄인 코드
        cell.configure(row: travel[indexPath.row])
        
        return cell
    }

}
