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
    
    func showTabBarFlow() {
        let tabBarCoordinator = TabBarCoordinator(self.navigationController)
        tabBarCoordinator.start()
        childCoordinators.append(tabBarCoordinator)
    }
}

// MARK: - showViewController

extension AppCoordinator {
    private func showLoginViewController() {
        let coordinator = LoginCoordinator(self.navigationController)
        coordinator.delegate = self
        coordinator.start()
        self.childCoordinators.append(coordinator)
    }
    
    private func showCargoListViewController() {
        let coordinator = CargoListCoordinator(self.navigationController)
        coordinator.delegate = self
        coordinator.start()
        self.childCoordinators.append(coordinator)
    }
    
    private func showSignUpViewController() {
        let coordinator = SignUpCoordinator(self.navigationController)
        coordinator.delegate = self
        coordinator.start()
        self.childCoordinators.append(coordinator)
    }
}

// MARK: - Login
extension AppCoordinator: LoginCoordinatorDelegate {
    func didLoggedIn(_ coordinator: LoginCoordinator) {
        self.childCoordinators = self.childCoordinators.filter { $0 !== coordinator }
        self.showCargoListViewController()
    }
    
    func didSignedUp(_ coordinator: LoginCoordinator) {
        self.childCoordinators = self.childCoordinators.filter { $0 !== coordinator }
        self.showSignUpViewController()
    }
}

// MARK: - CargoList
extension AppCoordinator: CargoListCoordinatorDelegate {
    func didLoggedOut(_ coordinator: CargoListCoordinator) {
        self.childCoordinators = self.childCoordinators.filter { $0 !== coordinator }
        self.showLoginViewController()
    }
}

// MARK: - SignUp
extension AppCoordinator: SignUpCoordinatorDelegate {
}
