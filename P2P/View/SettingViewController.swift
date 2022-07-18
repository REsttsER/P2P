//
//  SettingViewController.swift
//  P2P
//
//  Created by 장은애(Eunae Jang) on 2022/07/18.
//

import UIKit

class SettingViewController: UIViewController {
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.text = "세팅 화면"
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
    }
}

extension SettingViewController {
    func configureUI() {
        view.addSubview(label)
        label.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
    }
}
