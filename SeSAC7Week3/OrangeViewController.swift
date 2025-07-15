//
//  OrangeViewController.swift
//  SeSAC7Week3
//
//  Created by 서지민 on 7/15/25.
//

import UIKit

class OrangeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func closeButtonTapped(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}
