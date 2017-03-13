//
//  StoreViewController.swift
//  tireKingDemo
//
//  Created by 李泽昆 on 17/3/13.
//  Copyright © 2017年 Frank-Lee. All rights reserved.
//

import UIKit

class StoreViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 背景颜色
        view.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        // 导航标题
        self.navigationItem.title = "轮胎商城"
        
        // 导航条背景色
        self.navigationController?.navigationBar.barTintColor = #colorLiteral(red: 1, green: 0.5144633651, blue: 0.101094462, alpha: 1)
        
    }


}
