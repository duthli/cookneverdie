//
//  menuCell.swift
//  cooknerverdie
//
//  Created by do duy hung on 10/18/16.
//  Copyright © 2016 do duy hung. All rights reserved.
//

import Foundation
import UIKit
class menuCell: UITableViewCell{
    var lbl_Trend : UILabel!
    var view_Trend : UIView!
    var img_Background : UIImageView!
    var lbl_Title : UILabel!
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addCell()

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func awakeFromNib() {
        super.awakeFromNib()
                // Initialization code
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    func addCell()
    {
        if (lbl_Title == nil)
        {
            lbl_Trend = UILabel()
            lbl_Trend.setuptrends(lbl: lbl_Trend)
            view_Trend = UIView()
            view_Trend.setupView(view: view_Trend)
            img_Background = UIImageView()
            lbl_Title = UILabel()
            lbl_Title.setupTitle(lbl: lbl_Title)
            
            self.contentView.addSubview(img_Background)
            self.contentView.addSubview(view_Trend)
            self.contentView.addSubview(lbl_Trend)
            self.contentView.addSubview(lbl_Title)
            
            
            constraints_img_Background()
            constraints_lbl_Title()
            constraints_view_Trend()
            constraints_LabelTrend()
            
            
        }
        
    }
    func constraints_img_Background()
    {
        img_Background.translatesAutoresizingMaskIntoConstraints  = false
        let trailing = NSLayoutConstraint(item: img_Background, attribute: .trailing, relatedBy: .equal, toItem: self.contentView, attribute: .trailing, multiplier: 1.0, constant: 0)
        let top = NSLayoutConstraint(item: img_Background, attribute: .top, relatedBy: .equal, toItem: self.contentView, attribute: .top, multiplier: 1.0, constant: 0)
        let leading = NSLayoutConstraint(item: img_Background, attribute: .leading, relatedBy: .equal, toItem: self.contentView, attribute: .leading, multiplier: 1.0, constant: 0)
        let bottom = NSLayoutConstraint(item: img_Background, attribute: .bottom, relatedBy: .equal, toItem: self.contentView, attribute: .bottom, multiplier: 1.0, constant: 0)
        NSLayoutConstraint.activate([trailing,top,leading,bottom])
    }
    func constraints_lbl_Title()
    {
        lbl_Title.translatesAutoresizingMaskIntoConstraints  = false
        let trailing = NSLayoutConstraint(item: lbl_Title, attribute: .trailing, relatedBy: .equal, toItem: self.contentView, attribute: .trailing, multiplier: 1.0, constant: 0)
        let height = NSLayoutConstraint(item: lbl_Title, attribute: .height, relatedBy: .equal, toItem: self.contentView, attribute: .height, multiplier: 0.25, constant: 0)
        let leading = NSLayoutConstraint(item: lbl_Title, attribute: .leading, relatedBy: .equal, toItem: self.contentView, attribute: .leading, multiplier: 1.0, constant: 0)
        let bottom = NSLayoutConstraint(item: lbl_Title, attribute: .bottom, relatedBy: .equal, toItem: self.contentView, attribute: .bottom, multiplier: 1.0, constant: self.contentView.bounds.size.height/3)
        NSLayoutConstraint.activate([trailing,height,leading,bottom])
    }

    func constraints_view_Trend()
    {
        view_Trend.translatesAutoresizingMaskIntoConstraints  = false
        let trailing = NSLayoutConstraint(item: view_Trend, attribute: .trailing, relatedBy: .equal, toItem: self.contentView, attribute: .trailing, multiplier: 1.0, constant: -(self.contentView.bounds.size.width/12))
        let top = NSLayoutConstraint(item: view_Trend, attribute: .top, relatedBy: .equal, toItem: self.contentView, attribute: .top, multiplier: 1.0, constant: 5)
        let height = NSLayoutConstraint(item: view_Trend, attribute: .height, relatedBy: .equal, toItem: self.contentView, attribute: .height, multiplier: 0.1, constant: 0)
        let width = NSLayoutConstraint(item: view_Trend, attribute: .width, relatedBy: .equal, toItem: self.contentView, attribute: .width, multiplier: 0.3, constant: 0)
        NSLayoutConstraint.activate([trailing,top,height,width])
    }
    func constraints_LabelTrend()
    {
        lbl_Trend.translatesAutoresizingMaskIntoConstraints  = false
        let trailing = NSLayoutConstraint(item: lbl_Trend, attribute: .trailing, relatedBy: .equal, toItem: self.view_Trend, attribute: .trailing, multiplier: 1.0, constant: self.view_Trend.bounds.width/3)
        let top = NSLayoutConstraint(item: lbl_Trend, attribute: .top, relatedBy: .equal, toItem: self.view_Trend, attribute: .top, multiplier: 1.0, constant: self.view_Trend.bounds.height/3)
        let leading = NSLayoutConstraint(item: lbl_Trend, attribute: .leading, relatedBy: .equal, toItem: self.view_Trend, attribute: .leading, multiplier: 1.0, constant: self.view_Trend.bounds.width/3)
        let bottom = NSLayoutConstraint(item: lbl_Trend, attribute: .bottom, relatedBy: .equal, toItem: self.view_Trend, attribute: .bottom, multiplier: 1.0, constant: self.view_Trend.bounds.height/3)
        NSLayoutConstraint.activate([trailing,top,leading,bottom])
    }
    


    
}
