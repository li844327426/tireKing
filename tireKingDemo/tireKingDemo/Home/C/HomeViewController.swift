//
//  HomeViewController.swift
//  tireKingDemo
//
//  Created by 李泽昆 on 17/3/13.
//  Copyright © 2017年 Frank-Lee. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 背景颜色
        view.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        // 导航条搜索
        self.navigationItem.titleView = UISearchBar.init()
        // 导航条背景色
        self.navigationController?.navigationBar.barTintColor = #colorLiteral(red: 1, green: 0.5144633651, blue: 0.101094462, alpha: 1)
    }




}
