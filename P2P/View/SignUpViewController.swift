//
//  SignUpViewController.swift
//  P2P
//
//  Created by 장은애(Eunae Jang) on 2022/07/13.
//

import Foundation
import UIKit
import SnapKit

protocol SignUpViewControllerDelegate {
    
}

class SignUpViewController: UIViewController {
    
    var delegate: SignUpViewControllerDelegate?
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.text = "회원가입 화면"
        return label
    }()
    
    private lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("확인", for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
}

extension SignUpViewController {
    func configureUI() {
        view.addSubview(label)
        label.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
        
        view.addSubview(button)
        button.snp.makeConstraints {
            $0.top.equalTo(label)
        }
    }
    
    func bindViewModel() {
        
    }
}
