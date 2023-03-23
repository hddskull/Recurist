//
//  ViewController.swift
//  Recurist
//
//  Created by Maxim Gladkov on 23.03.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let label = UILabel()
        label.text = "Recurist"
        
        view.addSubview(label)
        label.snp.makeConstraints {
            $0.centerY.centerX.equalToSuperview()
        }
    }


}

