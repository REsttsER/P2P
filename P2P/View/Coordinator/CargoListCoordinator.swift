//
//  CargoCoordinator.swift
//  P2P
//
//  Created by 장은애(Eunae Jang) on 2022/07/14.
//

import UIKit

protocol CargoListCoordinatorDelegate {
    func didLoggedOut(_ coordinator: CargoListCoordinator)
}

class CargoListCoordinator: Coordinator, CargoListViewControllerDelegate {
    var childCoordinators: [Coordinator] = []
    var delegate: CargoListCoordinatorDelegate?
    
    private var navigationController: UINavigationController!
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = CargoListViewController()
        viewController.view.backgroundColor =  .white
        viewController.delegate = self
        self.navigationController.viewControllers = [viewController]
    }
    
    func logout() {
        self.delegate?.didLoggedOut(self)
    }
}
