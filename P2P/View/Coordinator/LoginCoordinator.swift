//
//  LoginCoordinator.swift
//  P2P
//
//  Created by 장은애(Eunae Jang) on 2022/07/13.
//

import UIKit

protocol LoginCoordinatorDelegate {
    func didLoggedIn (_ coordinator: LoginCoordinator)
    func didSignedUp (_ coordinator: LoginCoordinator)
}

class LoginCoordinator: Coordinator, LoginViewControllerDelegate{

    var childCoordinators: [Coordinator] = []
    var delegate: LoginCoordinatorDelegate?
    
    private var navigationController: UINavigationController!
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = LoginViewController()
        viewController.view.backgroundColor = .white
        viewController.delegate = self
        
        self.navigationController.viewControllers = [viewController]
    }
    
    func login() {
        self.delegate?.didLoggedIn(self)
    }
    
    func signup() {
        self.delegate?.didSignedUp(self)
    }
}