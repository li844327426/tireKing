//
//  MeViewController.swift
//  tireKingDemo
//
//  Created by 李泽昆 on 17/3/13.
//  Copyright © 2017年 Frank-Lee. All rights reserved.
//

import UIKit

class MeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 背景颜色
        view.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        // 导航标题
        self.navigationItem.title = "个人中心"
        // 导航条背景色
        self.navigationController?.navigationBar.barTintColor = #colorLiteral(red: 1, green: 0.5144633651, blue: 0.101094462, alpha: 1)
    }


}
