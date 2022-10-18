//
//  InstaTabBarViewController.swift
//  InstagrammApp
//
//  Created by Валентин Коскин on 17.10.2022.
//

import UIKit

/// Класс для отображения экранов Дом, Поиск, Добавление, Лайки, Профиль c использованием TabBar
final class InstaTabBarViewController: UITabBarController {
    
    // MARK: Constants
    
    private enum Constants {
        static let homeItemTittle = "Instagramm"
        static let tabBarColorName = "whiteBlackColor"
        static let homeImageName = "homekit"
        static let searchImageName = "magnifyingglass"
        static let addingImageName = "plus.circle"
        static let likesImageName = "heart"
        static let profileImageName = "person.crop.circle"
    }

    // MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.barTintColor = UIColor(named: Constants.tabBarColorName)
        createTabBars()

    }
    
    // MARK: Private Methods
    
    private func createTabBars() {
        let homeViewController = HomeViewController()
        let searchViewController = SearchViewController()
        let addingViewController = AddingViewController()
        let likesViewController = LikesViewController()
        let profileViewController = ProfileViewController()
        
        let homeNavController = UINavigationController(rootViewController: homeViewController)
        let searchNavController = UINavigationController(rootViewController: searchViewController)
        let addingNavController = UINavigationController(rootViewController: addingViewController)
        let likesNavController = UINavigationController(rootViewController: likesViewController)
        let profileNavController = UINavigationController(rootViewController: profileViewController)
                
        homeNavController.tabBarItem = UITabBarItem(title: nil,
                                                    image: UIImage(systemName: Constants.homeImageName), tag: 0)
        searchNavController.tabBarItem = UITabBarItem(title: nil,
                                                    image: UIImage(systemName: Constants.searchImageName), tag: 1)
        addingNavController.tabBarItem = UITabBarItem(title: nil,
                                                    image: UIImage(systemName: Constants.addingImageName), tag: 2)
        likesNavController.tabBarItem = UITabBarItem(title: nil,
                                                    image: UIImage(systemName: Constants.likesImageName), tag: 3)
        profileNavController.tabBarItem = UITabBarItem(title: nil,
                                                    image: UIImage(systemName: Constants.profileImageName), tag: 4)
        
        viewControllers = [homeNavController, searchNavController, addingNavController,
        likesNavController, profileNavController]
    }
}
