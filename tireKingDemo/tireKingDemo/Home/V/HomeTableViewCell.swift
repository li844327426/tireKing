//
//  HomeTableViewCell.swift
//  tireKingDemo
//
//  Created by 李泽昆 on 17/3/13.
//  Copyright © 2017年 Frank-Lee. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell,UICollectionViewDataSource  {

    @IBOutlet weak var collectionView: UICollectionView!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.register(UINib.init(nibName: "ClassifyCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ClassifyCollectionViewCell")
        collectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ClassifyCollectionViewCell", for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    
    
}
