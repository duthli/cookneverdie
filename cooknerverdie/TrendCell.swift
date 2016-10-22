//
//  TrendCell.swift
//  cooknerverdie
//
//  Created by do duy hung on 10/18/16.
//  Copyright © 2016 do duy hung. All rights reserved.
//

import UIKit

class trendCell: UICollectionViewCell {
    var label : UILabel!
    var bg : UIView!
    var kCellWidth: CGFloat = 50
    var kCellHeight: CGFloat = 50
    override init(frame:CGRect){
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func addView(){
        if (label == nil){
            bg = UIView(frame: CGRect(x: 0, y: 10, width: kCellWidth, height: 30))
            label = UILabel(frame: CGRect(x: 0, y: 10, width: kCellWidth, height: 30))
            label.textColor = UIColor.white
            label.textAlignment = .center
            bg.layer.cornerRadius = 12
            //            btn.setTitleColor(UIColor.white, for: .normal)
            //            btn.setTitleColor(UIColor.red, for: .highlighted)
            bg.backgroundColor = UIColor.red
            
            contentView.addSubview(bg)
            contentView.addSubview(label)
        }
        
    }
    
}

