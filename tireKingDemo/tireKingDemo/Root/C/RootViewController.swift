//
//  RootViewController.swift
//  tireKingDemo
//
//  Created by 李泽昆 on 17/3/13.
//  Copyright © 2017年 Frank-Lee. All rights reserved.
//

import UIKit

class RootViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
<<<<<<< HEAD
        // 创建一个tabbar的控制器
        creatSubViewController()
    }
    
    
    // 创建一个tabbar的控制器
    func creatSubViewController() {
        // 创建首页Home
        let homeVC = HomeViewController()
        let homeItem: UITabBarItem = UITabBarItem (title: "首页", image: nil, selectedImage: nil)
        homeVC.tabBarItem = homeItem
        
        // 创建选胎store
        let storeVC = StoreViewController()
        let storeItem: UITabBarItem = UITabBarItem (title: "选胎", image: nil, selectedImage: nil)
        storeVC.tabBarItem = storeItem
        
        // 创建发现
        let findVC = StoreViewController()
        let findItem: UITabBarItem = UITabBarItem (title: "发现", image: nil, selectedImage: nil)
        findVC.tabBarItem = findItem
        
        // 创建我的me
        let meVC = MeViewController()
        let meItem: UITabBarItem = UITabBarItem (title: "我的", image: nil, selectedImage: nil)
        meVC.tabBarItem = meItem
        
        // 添加自控制器
        let tabArray = [homeVC, storeVC, findVC, meVC]
        self.viewControllers = tabArray
        
=======
>>>>>>> 70189808b0c63fd7d6c97748788aab27d8f0da33
    }
}
