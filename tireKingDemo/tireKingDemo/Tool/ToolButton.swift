//
//  ToolButton.swift
//  tireKingDemo
//
//  Created by 杨 on 2017/3/13.
//  Copyright © 2017年 Frank-Lee. All rights reserved.
//

import UIKit

class ToolButton: UIButton {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let centerX:CGFloat = self.frame.size.width / 2;
        let centerY:CGFloat = self.frame.size.height / 2;
        self.titleLabel?.center = CGPoint(x: centerX, y: centerY + 30)
        self.imageView?.center = CGPoint(x: centerX, y: centerY - 5)
        
    }
   
}
 
