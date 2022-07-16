//
//  CargoListViewController.swift
//  P2P
//
//  Created by 장은애(Eunae Jang) on 2022/07/13.
//

import Foundation
import UIKit
import SnapKit

protocol CargoListViewControllerDelegate {
    func logout()
}

class CargoListViewController: UIViewController {
    
    var delegate: CargoListViewControllerDelegate?
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.text = "메인화면"
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let item = UIBarButtonItem(title: "로그아웃", style: .plain, target: self, action: #selector(logoutButtonDidTap))
        self.navigationItem.rightBarButtonItem = item
        configureUI()
    }
    
    deinit {
        print("- \(type(of: self)) deinit")
    }
    
    @objc
    func logoutButtonDidTap() {
        self.delegate?.logout()
    }
}

extension CargoListViewController {
    func configureUI() {
        view.addSubview(label)
        label.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
    }
}
