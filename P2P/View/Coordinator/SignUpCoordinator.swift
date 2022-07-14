//
//  SignUpCoordinator.swift
//  P2P
//
//  Created by 장은애(Eunae Jang) on 2022/07/14.
//

import Foundation
import UIKit

protocol SignUpCoordinatorDelegate {
}

class SignUpCoordinator: Coordinator,  SignUpViewControllerDelegate {
    var childCoordinators: [Coordinator] = []
    var delegate: SignUpCoordinatorDelegate?
    
    private var navigationController: UINavigationController!
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = SignUpViewController()
        viewController.view.backgroundColor = .white
        viewController.delegate = self
        self.navigationController.viewControllers = [viewController]
    }
}
