//
//  StoreViewController.swift
//  tireKingDemo
//
//  Created by 李泽昆 on 17/3/13.
//  Copyright © 2017年 Frank-Lee. All rights reserved.
//

import UIKit

class StoreViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 背景颜色
        view.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        // 导航标题
        self.navigationItem.title = "轮胎商城"
        // 导航条背景色
        self.navigationController?.navigationBar.barTintColor = #colorLiteral(red: 1, green: 0.5144633651, blue: 0.101094462, alpha: 1)
      
        // 添加表格
        self.setTableView()
        
    }
    
    // 添加表格
    func setTableView() {
        let tableV = UITableView(frame: self.view.bounds, style: .plain)
        tableV.delegate = self;
        tableV.dataSource = self;
        
        // 添加头视图
        let bannerImages = [UIImage.init(named: "banner"), UIImage.init(named: "banner"),]
        let bannerView = SDCycleScrollView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.size.width, height: 230), imageNamesGroup: bannerImages)
        tableV.tableHeaderView = bannerView
        
        self.view.addSubview(tableV)
        
        
    }
    // MARK: - UITableViewDateSource
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        return cell
    }

}
