//
//  TravelTableViewController.swift
//  SeSAC7Week3
//
//  Created by Jimin on 7/14/25.
//

import UIKit

class TravelTableViewController: UITableViewController {

    let nickname = "고래밥"
    let format = DateFormatter()    // DateFormatter()는 연산 비용, 인스턴스 생성 비용이 크다 -> cellForRowAt에 작성하는 것보다 여기 작성하면 공간을 덜 만든다. cellForRowAt에 작성하면 같은 내용인데 매번 불려지게 되기 때문에
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // XIB Cell로 (외부에서 셀을) 구성하는 순간 필요한 코드
        let xib = UINib(nibName: "TravelTableViewCell", bundle: nil)    // 외부에서 만든 파일을 가져올 때 쓰는게 bundle. 지금은 우리가 만든 파일에서 쓰기 때문에 nil 쓰면 됨
        tableView.register(xib, forCellReuseIdentifier: "TravelTableViewCell")
        
        // 조건 없이 전체 테이블뷰에 적용할 때
        tableView.rowHeight = UITableView.automaticDimension
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TravelTableViewCell", for: indexPath) as! TravelTableViewCell
        
        cell.travelLabel.text = "\(nickname)kdsjfdjfd\nsjfkdsjfsdjfdsfjdsljfdsjfgd\nsjfdsjfdsjfdsfjdsjfdsjf\ndsjfdksjfkdlsjfdsj\nfkdsjfdsjf"
        cell.travelLabel.numberOfLines = 0
        
        
        format.dateFormat = "yy년 MM월 dd일 hh시"
        
        let value = format.string(from: Date())
        cell.dateLabel.text = value
        
        return cell
    }

}
