//
//  TabBarCoordinator.swift
//  P2P
//
//  Created by 장은애(Eunae Jang) on 2022/07/18.
//

import Foundation
import UIKit

enum TabBarPage: String, CaseIterable {
    case cargolist, setting
    
    init?(index: Int) {
        switch index {
        case 0: self = .cargolist
        case 1: self = .setting
        default: return nil
        }
    }
    
    func pageOrderNumber() -> Int {
        switch self {
        case .cargolist: return 0
        case .setting: return 1
        }
    }
    
    func tabIcon() -> UIImage {
        switch self {
        case .cargolist: return UIImage(systemName: "list.bullet")!
        case .setting: return UIImage(systemName: "gearshape.fill")!
        }
    }
}

class TabBarCoordinator: NSObject, Coordinator {
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    var tabBarController: UITabBarController
    
    init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
        self.tabBarController = UITabBarController()
    }
    
    func start() {
        let pages: [TabBarPage] = TabBarPage.allCases
        let controllers: [UINavigationController] = pages.map({
            self.createTabNavigationController(of: $0)
        })
        self.configureTabBarController(with: controllers)
    }
    
    func configureTabBarController(with tabViewControllers: [UIViewController]) {
        self.tabBarController.setViewControllers(tabViewControllers, animated: true)
        self.tabBarController.selectedIndex = TabBarPage.cargolist.pageOrderNumber()
        self.tabBarController.view.backgroundColor = .systemBackground
        self.tabBarController.tabBar.tintColor = #colorLiteral(red: 0.6, green: 0.8078431373, blue: 0.9803921569, alpha: 1)
        self.navigationController.pushViewController(self.tabBarController, animated: true)
    }
    
    private func createTabNavigationController(of page: TabBarPage) -> UINavigationController {
        let tabNavigationContoller = UINavigationController()
        
        tabNavigationContoller.setNavigationBarHidden(false, animated: false)
        tabNavigationContoller.tabBarItem = UITabBarItem(title: nil, image: page.tabIcon(), tag: page.pageOrderNumber())
        self.startTabCoordinator(of: page, to: tabNavigationContoller)
        return tabNavigationContoller
    }
    
    private func startTabCoordinator(of page: TabBarPage, to tabNavigationController: UINavigationController) {
        switch page {
        case .cargolist:
            let cargoListCoodinator = CargoListCoordinator(tabNavigationController)
            self.childCoordinators.append(cargoListCoodinator)
            cargoListCoodinator.start()
        case .setting:
            let settingCoordinator = SettingCoordinator(tabNavigationController)
            self.childCoordinators.append(settingCoordinator)
            settingCoordinator.start()
        }
    }
    
}
