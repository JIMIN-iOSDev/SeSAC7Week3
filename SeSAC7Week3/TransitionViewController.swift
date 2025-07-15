//
//  TransitionViewController.swift
//  SeSAC7Week3
//
//  Created by 서지민 on 7/15/25.
//

import UIKit

class TransitionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func presentButtonTapped(_ sender: UIButton) {
        
        // 1. 어떤 스토리보드의
        let sb = UIStoryboard(name: "Main", bundle: nil)
        // 2. 어떤 뷰컨트롤러를
        let vc = sb.instantiateViewController(withIdentifier: "GreenViewController") as! GreenViewController
        // 값 전달(내일할거임)
//        vc.view.backgroundColor = .yellow
        // vc에서 아웃렛이 늦게 만들어진다 -> 레이블 가져오면 런타임 이슈 생김. 여기서 생기는 거보다 늦게 아웃렛이 생성됨
//        vc.textLabel.text = "Jack"
//        vc.textLabel.backgroundColor = .red
        // 2.5 모달 스타일(옵션)
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .flipHorizontal
        // 3. 어떤 방식으로 전환할 지
        present(vc, animated: true)
    }
    
    @IBAction func pushButtonTapped(_ sender: UIButton) {
        
        // 1. 어떤 스토리보드의
        let sb = UIStoryboard(name: "Main", bundle: nil)
        // 2. 어떤 뷰컨트롤러를
        let vc = sb.instantiateViewController(withIdentifier: "OrangeViewController") as! OrangeViewController
        // 3. 어떤 방식으로 전환할 지
        navigationController?.pushViewController(vc, animated: true)    // nil이라면 ?에서 코드 중단. pushViewController 실행 안함
        
        // 윗 줄 코드랑 같음
//        if navigationController != nil {
//            navigationController!.pushViewController(vc, animated: true)
//        }
        
    }
    
}
