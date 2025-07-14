//
//  ViewController.swift
//  SeSAC7Week3
//
//  Created by 서지민 on 7/11/25.
//

import UIKit
import Toast

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setBackground()
        
        print(0)
        print(1)
        print(2)
        print(3)
        print(9)
        print(5)
        print(6)
        print(7)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        view.makeToast("Hi", duration: 2, position: .top)   // 바탕 view 기준으로만 뜨는 거기 때문에 label에 쓰려고 하면 잘 안될거임
    }


}

