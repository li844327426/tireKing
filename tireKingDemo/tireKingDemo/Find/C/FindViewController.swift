//
//  FindViewController.swift
//  tireKingDemo
//
//  Created by 李泽昆 on 17/3/13.
//  Copyright © 2017年 Frank-Lee. All rights reserved.
//

import UIKit

class FindViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 背景颜色
        view.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        // 导航标题
        self.navigationItem.title = "发现"
        // 导航条背景色
        self.navigationController?.navigationBar.barTintColor = #colorLiteral(red: 1, green: 0.5144633651, blue: 0.101094462, alpha: 1)
    }

}
