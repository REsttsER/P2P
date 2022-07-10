//
//  LoginViewController.swift
//  P2P
//
//  Created by 장은애(Eunae Jang) on 2022/07/07.
//

import UIKit
import SnapKit

class LoginViewController: UIViewController {

    // MARK: - Properties
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.text = "P2P"
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
        textField.placeholder = "이메일을 입력해주세요"
        return textField
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
        textField.placeholder = "비밀번호를 입력해주세요"
        textField.isSecureTextEntry = true
        return textField
    }()

    private lazy var loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        button.titleLabel?.textColor = .white
        button.backgroundColor = #colorLiteral(red: 0.6, green: 0.8078431373, blue: 0.9803921569, alpha: 1)
        button.layer.cornerRadius = 15
        return button
    }()

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        configureUI()
    }

    // MARK: - Helpers
    func configureUI() {
        view.addSubview(titleLabel)
        titleLabel.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(150)
            $0.centerX.equalToSuperview()
        }

        view.addSubview(emailView)
        emailView.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom).offset(20)
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

        view.addSubview(passwordView)
        passwordView.snp.makeConstraints {
            $0.top.equalTo(emailView.snp.bottom).offset(10)
            $0.leading.equalTo(emailView.snp.leading)
            $0.trailing.equalTo(emailView.snp.trailing)
            $0.height.equalTo(50)
        }

        passwordView.addSubview(passwordTextField)
        passwordTextField.snp.makeConstraints {
            $0.top.bottom.equalToSuperview()
            $0.leading.equalToSuperview().offset(10)
            $0.trailing.equalToSuperview().offset(-10)
        }

        view.addSubview(loginButton)
        loginButton.snp.makeConstraints {
            $0.top.equalTo(passwordView.snp.bottom).offset(50)
            $0.leading.trailing.equalTo(emailView)
        }
    }

}
