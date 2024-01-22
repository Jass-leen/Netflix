//
//  ViewController.swift
//  netflix clone
//
//  Created by 1 on 17/01/24.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray4
        let homeTabbarController = UINavigationController(rootViewController: HomeViewController())
        homeTabbarController.tabBarItem.image = UIImage(systemName: "house.fill")
        homeTabbarController.title = "Home"
        let upcomingTabbarController = UINavigationController(rootViewController: UpcomingViewController())
        upcomingTabbarController.tabBarItem.image = UIImage(systemName: "play.rectangle.on.rectangle.fill")
        upcomingTabbarController.title = "Upcoming"
        let searchTabbarController = UINavigationController(rootViewController: SearchViewController())
        searchTabbarController.tabBarItem.image = UIImage(systemName: "magnifyingglass.circle.fill")
        searchTabbarController.title = "Search"
        let downloadsTabbarController = UINavigationController(rootViewController: DownloadsViewController())
        downloadsTabbarController.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
        downloadsTabbarController.title = "Downloads"

        
        setViewControllers([homeTabbarController,upcomingTabbarController,searchTabbarController,downloadsTabbarController], animated: true)
    }


}

