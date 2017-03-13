//
//  FindViewController.swift
//  tireKingDemo
//
//  Created by 李泽昆 on 17/3/13.
//  Copyright © 2017年 Frank-Lee. All rights reserved.
//

import UIKit

class FindViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 背景颜色
        view.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        // 导航标题
        self.navigationItem.title = "发现"
        // 导航条背景色
        self.navigationController?.navigationBar.barTintColor = #colorLiteral(red: 1, green: 0.5144633651, blue: 0.101094462, alpha: 1)
        
        // 添加表格
        self.setTableView()
    }
    
    // 添加表格
    func setTableView() {
        let tableV = UITableView(frame: view.bounds, style: .plain)
        tableV.delegate = self;
        tableV.dataSource = self;
        // 自定义工具条单元格注册
        tableV.register(UINib.init(nibName: "FindToolTableViewCell", bundle: nil), forCellReuseIdentifier: "toolCell")
        // 自定义新闻单元格注册
        tableV.register(UINib.init(nibName: "FindNewsTableViewCell", bundle: nil), forCellReuseIdentifier: "newsCell")
        
        // 添加头视图
        let bannerImages = [UIImage.init(named: "banner"), UIImage.init(named: "banner"),]
        let bannerView = SDCycleScrollView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.size.width, height: 230), imageNamesGroup: bannerImages)
        tableV.tableHeaderView = bannerView
        
        // 加到视图
        self.view.addSubview(tableV)
    }
    
    // MARK: - UITableViewDateSource
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        
        if indexPath.section == 0 {
            let toolcell = tableView.dequeueReusableCell(withIdentifier: "toolCell", for: indexPath) as! FindToolTableViewCell
            toolcell.selectionStyle = .none
            return toolcell
        }
        let newscell = tableView.dequeueReusableCell(withIdentifier: "newsCell", for: indexPath) as! FindNewsTableViewCell
        
        return newscell
    }
    
    
    // MARK: - UITableViewDelegate
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 90
        }
        return 200
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        if section == 0 {
            return 10
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
