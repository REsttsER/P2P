//
//  SettingCoordinator.swift
//  P2P
//
//  Created by 장은애(Eunae Jang) on 2022/07/18.
//

import UIKit

class SettingCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    
    private var navigationController: UINavigationController!
    
    init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        // do something
    }
}
