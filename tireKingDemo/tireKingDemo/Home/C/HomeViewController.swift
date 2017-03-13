//
//  HomeViewController.swift
//  tireKingDemo
//
//  Created by 李泽昆 on 17/3/13.
//  Copyright © 2017年 Frank-Lee. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, SDCycleScrollViewDelegate, UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 背景颜色
        view.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)

        
        
        
        // 设置表格
        setTableView()
        

        // 导航条搜索
        self.navigationItem.titleView = UISearchBar.init()
        // 导航条背景色
        self.navigationController?.navigationBar.barTintColor = #colorLiteral(red: 1, green: 0.5144633651, blue: 0.101094462, alpha: 1)

    }

    func setTableView() {
        let tableView = UITableView(frame: view.bounds, style: .plain)
        tableView.dataSource = self
        tableView.delegate = self
        let bannerImages = [UIImage.init(named: "banner"), UIImage.init(named: "banner"),]
        let bannerView = SDCycleScrollView(frame: CGRect.init(x: 0, y: 0, width: view.bounds.size.width, height: 230), imageNamesGroup: bannerImages)
        bannerView?.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        bannerView?.delegate = self
        tableView.tableHeaderView = bannerView
        view.addSubview(tableView)
    }
    
    //MARK: UITableViewDataSource
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "22")
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    //MARK: UITableViewDelegate
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 100
        case 1:
            return 80
        default:
            return 200
        }
    }
    
    

}
