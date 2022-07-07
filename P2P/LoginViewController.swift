//
//  LoginViewController.swift
//  P2P
//
//  Created by 장은애(Eunae Jang) on 2022/07/07.
//

import UIKit
import SnapKit
import RxSwift
import RxCocoa

protocol BaseViewControllerAttributes {
    func configureUI()
    func serAttributes()
    func bindViewModel()
}

class LoginViewController: UIViewController {
}
