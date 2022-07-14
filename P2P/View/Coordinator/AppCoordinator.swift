//
//  AppCoordinator.swift
//  P2P
//
//  Created by 장은애(Eunae Jang) on 2022/07/13.
//

import UIKit

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    func start()
}

class AppCoordinator: Coordinator {
 
    var childCoordinators: [Coordinator] = []
    private var navigationController: UINavigationController!
    
    var isLoggedIn: Bool = false
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        if self.isLoggedIn {
            self.showCargoListViewController()
        } else {
            self.showLoginViewController()
        }
    }
}

// MARK: - Login
extension AppCoordinator: LoginCoordinatorDelegate {
    private func showLoginViewController() {
        let coordinator = LoginCoordinator(navigationController: self.navigationController)
        coordinator.delegate = self
        coordinator.start()
        self.childCoordinators.append(coordinator)
    }
    
    func didLoggedIn(_ coordinator: LoginCoordinator) {
        self.childCoordinators = self.childCoordinators.filter { $0 !== coordinator }
        self.showCargoListViewController()
    }
}

// MARK: - CargoList
extension AppCoordinator: CargoListCoordinatorDelegate {
    private func showCargoListViewController() {
        let coordinator = CargoListCoordinator(navigationController: self.navigationController)
        coordinator.delegate = self
        coordinator.start()
        self.childCoordinators.append(coordinator)
    }
    
    func didLoggedOut(_ coordinator: CargoListCoordinator) {
        self.childCoordinators = self.childCoordinators.filter { $0 !== coordinator }
        self.showLoginViewController()
    }
}
