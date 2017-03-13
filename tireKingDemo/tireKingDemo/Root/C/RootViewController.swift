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
 
        // 创建一个tabbar的控制器
        creatSubViewController()
    }
    
    
  
    // 创建一个tabbar的控制器
    func creatSubViewController() {
        // 创建首页Home
        // 导航条
        let homeNav = UINavigationController(rootViewController: HomeViewController())
        homeNav.tabBarItem = UITabBarItem.init(title: "首页", image: #imageLiteral(resourceName: "TAB_HOME-IMAGE"), selectedImage: #imageLiteral(resourceName: "TAB_HOME-SELECTEDIMAGE").withRenderingMode(.alwaysOriginal))
      
        
        
        // 创建选胎store
        // 导航条
        let storeNav = UINavigationController(rootViewController: StoreViewController())
        storeNav.tabBarItem = UITabBarItem.init(title: "选胎", image: #imageLiteral(resourceName: "TAB_STORE-IMAGE"), selectedImage: #imageLiteral(resourceName: "TAB_STORE-SELECTEDIMAGE").withRenderingMode(.alwaysOriginal))
   
        
        // 创建发现
        // 导航条
        let findNav = UINavigationController(rootViewController: FindViewController())
        findNav.tabBarItem = UITabBarItem.init(title: "选胎", image: #imageLiteral(resourceName: "TAB_FIND-IMAGE"), selectedImage: #imageLiteral(resourceName: "TAB_FIND-SELECTEDIMAGE").withRenderingMode(.alwaysOriginal))
        
        // 创建我的me
        // 导航条
        let meNav = UINavigationController(rootViewController: MeViewController())
        meNav.tabBarItem = UITabBarItem.init(title: "我的", image: #imageLiteral(resourceName: "TAB_ME-IMAGE"), selectedImage: #imageLiteral(resourceName: "TAB_ME-SELECTEDIMAGE").withRenderingMode(.alwaysOriginal))
        // 添加自控制器
        let tabArray = [homeNav, storeNav, findNav, meNav]
        tabBar.tintColor = UIColor.orange
        viewControllers = tabArray
        
    }
}





