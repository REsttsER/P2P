//
//  SignUpViewController.swift
//  P2P
//
//  Created by 장은애(Eunae Jang) on 2022/07/13.
//

import Foundation
import UIKit
import SnapKit

class SignUpViewController: UIViewController {
    
    private lazy var emailLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.text = "아이디(이메일)"
        return label
    }()
    
    private lazy var emailView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 15
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.lightGray.cgColor
        return view
    }()
    
    private lazy var emailTextField: UITextField = {
        let textField = UITextField()
        return textField
    }()
    
    private lazy var passwordLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.text = "비밀번호"
        return label
    }()
    
    private lazy var passwordView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 15
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.lightGray.cgColor
        return view
    }()
    
    private lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.isSecureTextEntry = true
        return textField
    }()
    
    private lazy var confirmPasswordLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.text = "비밀번호 재확인"
        return label
    }()
    
    private lazy var confirmPasswordView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 15
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.lightGray.cgColor
        return view
    }()
    
    private lazy var confirmPasswordTextField: UITextField = {
        let textField = UITextField()
        textField.isSecureTextEntry = true
        return textField
    }()
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.text = "이름"
        return label
    }()
    
    private lazy var nameView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 15
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.lightGray.cgColor
        return view
    }()
    
    private lazy var nameTextField: UITextField = {
        let textField = UITextField()
        textField.isSecureTextEntry = true
        return textField
    }()
    
    private lazy var phoneNumberLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.text = "전화번호"
        return label
    }()
    
    private lazy var phoneNumberView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 15
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.lightGray.cgColor
        return view
    }()
    
    private lazy var phoneNumberTextField: UITextField = {
        let textField = UITextField()
        textField.isSecureTextEntry = true
        return textField
    }()
    
    private lazy var accountNumberLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.text = "계좌번호"
        return label
    }()
    
    private lazy var accountNumberView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 15
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.lightGray.cgColor
        return view
    }()
    
    private lazy var accountNumberTextField: UITextField = {
        let textField = UITextField()
        textField.isSecureTextEntry = true
        return textField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    func configureUI() {
        // 이메일(아이디)
        view.addSubview(emailLabel)
        emailLabel.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(50)
            $0.leading.equalToSuperview().offset(40)
        }
        
        view.addSubview(emailView)
        emailView.snp.makeConstraints {
            $0.top.equalTo(emailLabel.snp.bottom).offset(10)
            $0.leading.equalToSuperview().offset(40)
            $0.trailing.equalToSuperview().offset(-40)
            $0.height.equalTo(50)
        }
        
        emailView.addSubview(emailTextField)
        emailTextField.snp.makeConstraints {
            $0.top.bottom.equalToSuperview()
            $0.leading.equalToSuperview().offset(10)
            $0.trailing.equalToSuperview().offset(-10)
        }
        
        // 비밀번호
        view.addSubview(passwordLabel)
        passwordLabel.snp.makeConstraints {
            $0.top.equalTo(emailView.snp.bottom).offset(20)
            $0.leading.equalTo(emailLabel.snp.leading)
        }
        view.addSubview(passwordView)
        passwordView.snp.makeConstraints {
            $0.top.equalTo(emailView.snp.bottom).offset(10)
            $0.leading.equalTo(emailView.snp.leading)
            $0.trailing.equalTo(emailView.snp.trailing)
        }
        passwordView.addSubview(passwordTextField)
        passwordTextField.snp.makeConstraints {
                $0.top.bottom.equalToSuperview()
                $0.leading.equalToSuperview().offset(10)
                $0.trailing.equalToSuperview().offset(-10)
            }
        
        // 비밀번호 재확인
        view.addSubview(confirmPasswordLabel)
        confirmPasswordLabel.snp.makeConstraints {
            $0.top.equalTo(passwordView.snp.bottom).offset(20)
            $0.leading.equalTo(emailLabel.snp.leading)
        }
        
        view.addSubview(confirmPasswordView)
        confirmPasswordView.snp.makeConstraints {
            $0.top.equalTo(passwordView.snp.bottom).offset(10)
            $0.leading.equalTo(emailView.snp.leading)
            $0.trailing.equalTo(emailView.snp.trailing)
        }
        view.addSubview(confirmPasswordView)
        confirmPasswordView.addSubview(confirmPasswordTextField)
        confirmPasswordTextField.snp.makeConstraints {
                $0.top.bottom.equalToSuperview()
                $0.leading.equalToSuperview().offset(10)
                $0.trailing.equalToSuperview().offset(-10)
            }
        
        // 이름
        view.addSubview(nameLabel)
        nameLabel.snp.makeConstraints {
            $0.top.equalTo(confirmPasswordView.snp.bottom).offset(20)
            $0.leading.equalTo(emailLabel.snp.leading)
        }
        
        view.addSubview(nameView)
        nameView.snp.makeConstraints {
            $0.top.equalTo(confirmPasswordView.snp.bottom).offset(10)
            $0.leading.equalTo(emailView.snp.leading)
            $0.trailing.equalTo(emailView.snp.trailing)
        }
        nameView.addSubview(nameTextField)
        nameTextField.snp.makeConstraints {
                $0.top.bottom.equalToSuperview()
                $0.leading.equalToSuperview().offset(10)
                $0.trailing.equalToSuperview().offset(-10)
            }
        
        // 전화번호
        view.addSubview(phoneNumberLabel)
        phoneNumberLabel.snp.makeConstraints {
            $0.top.equalTo(nameView.snp.bottom).offset(20)
            $0.leading.equalTo(emailLabel.snp.leading)
        }
        
        view.addSubview(phoneNumberView)
        phoneNumberView.snp.makeConstraints {
            $0.top.equalTo(nameView.snp.bottom).offset(10)
            $0.leading.equalTo(emailView.snp.leading)
            $0.trailing.equalTo(emailView.snp.trailing)
        }
        
        phoneNumberView.addSubview(phoneNumberTextField)
        phoneNumberTextField.snp.makeConstraints {
                $0.top.bottom.equalToSuperview()
                $0.leading.equalToSuperview().offset(10)
                $0.trailing.equalToSuperview().offset(-10)
            }
        
        // 계좌번호
        view.addSubview(accountNumberLabel)
        accountNumberLabel.snp.makeConstraints {
            $0.top.equalTo(phoneNumberView.snp.bottom).offset(20)
            $0.leading.equalTo(emailLabel.snp.leading)
        }
        
        view.addSubview(accountNumberView)
        accountNumberView.snp.makeConstraints {
            $0.top.equalTo(phoneNumberView.snp.bottom).offset(10)
            $0.leading.equalTo(emailView.snp.leading)
            $0.trailing.equalTo(emailView.snp.trailing)
        }
        
        accountNumberView.addSubview(accountNumberTextField)
        accountNumberTextField.snp.makeConstraints {
                $0.top.bottom.equalToSuperview()
                $0.leading.equalToSuperview().offset(10)
                $0.trailing.equalToSuperview().offset(-10)
            }
        
    }
}
