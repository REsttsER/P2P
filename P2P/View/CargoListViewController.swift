//
//  CargoListViewController.swift
//  P2P
//
//  Created by 장은애(Eunae Jang) on 2022/07/13.
//

import Foundation
import UIKit
import SnapKit

class CargoListViewController: UIViewController {
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.text = "메인화면"
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    func configureUI() {
        view.addSubview(label)
        label.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
    }
}
