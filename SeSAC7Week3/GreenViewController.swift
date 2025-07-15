//
//  GreenViewController.swift
//  SeSAC7Week3
//
//  Created by 서지민 on 7/15/25.
//

import UIKit

class GreenViewController: UIViewController {

    @IBOutlet var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func closeButtonTapped(_ sender: UIButton) {
        // 어디로 사라질 지 이미 앞에 화면에서 알고 있음. present 방식에서 사라지게 하는 거니까 dismiss 짝꿍
        dismiss(animated: true)
    }
}
