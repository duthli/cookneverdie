//
//  HotCell.swift
//  cooknerverdie
//
//  Created by do duy hung on 10/20/16.
//  Copyright © 2016 do duy hung. All rights reserved.
//

import UIKit

class HotCell: UITableViewCell {

    var lbl_Title: UILabel!
    var lbl_Name : UILabel!
    var lbl_Date : UILabel!
    var img_Background : UIImageView!
    var img_Avatar : UIImageView!
    
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

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func addCell()
    {
        img_Background = UIImageView()
        lbl_Title = UILabel()
        lbl_Name = UILabel()
        lbl_Date = UILabel()
        img_Avatar = UIImageView()
        
        lbl_Title.setupTitle(lbl: lbl_Title)
        lbl_Name.setupNormal(lbl: lbl_Name)
        lbl_Date.setupNormal(lbl: lbl_Date)
        
        self.contentView.addSubview(img_Background)
        self.contentView.addSubview(lbl_Title)
        self.contentView.addSubview(lbl_Name)
        self.contentView.addSubview(lbl_Date)
        self.contentView.addSubview(img_Avatar)
        
        constraints_img_Background()
        constraints_lbl_Title()
        constraints_lbl_Date()
        constraints_lbl_Name()
        constraints_img_Avatar()
        
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
        lbl_Title.translatesAutoresizingMaskIntoConstraints = false
        lbl_Title.textAlignment = .center
        let centerX = NSLayoutConstraint(item: lbl_Title, attribute: .centerX, relatedBy: .equal, toItem: self.contentView, attribute: .centerX, multiplier: 1.0, constant: 0)
        let width = NSLayoutConstraint(item: lbl_Title, attribute: .width, relatedBy: .equal, toItem: self.contentView, attribute: .width, multiplier: 0.5, constant: 0)
        let top = NSLayoutConstraint(item: lbl_Title, attribute: .top, relatedBy: .equal, toItem: self.contentView, attribute: .top, multiplier: 1.0, constant: 0)
        NSLayoutConstraint.activate([centerX,width,top])
    }
    func constraints_lbl_Name()
    {
        lbl_Name.translatesAutoresizingMaskIntoConstraints = false
        let trailing = NSLayoutConstraint(item: lbl_Name, attribute: .trailing, relatedBy: .equal, toItem: self.contentView, attribute: .trailing, multiplier: 1.0, constant: -21)
        let width = NSLayoutConstraint(item: lbl_Name, attribute: .width, relatedBy: .equal, toItem: self.contentView, attribute: .width, multiplier: 0.1, constant: 0)
        let height = NSLayoutConstraint(item: lbl_Name, attribute: .height, relatedBy: .equal, toItem: self.contentView, attribute: .height, multiplier: 0.1, constant: 0)
        let bottom = NSLayoutConstraint(item: lbl_Name, attribute: .bottom, relatedBy: .equal, toItem: self.lbl_Date, attribute: .top, multiplier: 1.0, constant: 0)
        NSLayoutConstraint.activate([trailing,width,height,bottom])
    }
    
    func constraints_lbl_Date()
    {
        lbl_Date.translatesAutoresizingMaskIntoConstraints = false
        let trailing = NSLayoutConstraint(item: lbl_Date, attribute: .trailing, relatedBy: .equal, toItem: self.contentView, attribute: .trailing, multiplier: 1.0, constant: -21)
        let width = NSLayoutConstraint(item: lbl_Date, attribute: .width, relatedBy: .equal, toItem: self.contentView, attribute: .width, multiplier: 0.1, constant: 0)
        let height = NSLayoutConstraint(item: lbl_Date, attribute: .height, relatedBy: .equal, toItem: self.contentView, attribute: .height, multiplier: 0.1, constant: 0)
        let bottom = NSLayoutConstraint(item: lbl_Date, attribute: .bottom, relatedBy: .equal, toItem: self.contentView, attribute: .bottom, multiplier: 1.0, constant: -21)
        NSLayoutConstraint.activate([trailing,width,height,bottom])
    }
    func constraints_img_Avatar()
    {
        img_Avatar.translatesAutoresizingMaskIntoConstraints = false
        let trailing = NSLayoutConstraint(item: img_Avatar, attribute: .trailing, relatedBy: .equal, toItem: self.lbl_Name, attribute: .leading, multiplier: 1.0, constant: -21)
        let width = NSLayoutConstraint(item: img_Avatar, attribute: .width, relatedBy: .equal, toItem: self.contentView, attribute: .width, multiplier: 0.1, constant: 0)
        let height = NSLayoutConstraint(item: img_Avatar, attribute: .height, relatedBy: .equal, toItem: self.contentView, attribute: .height, multiplier: 0.2, constant: 0)
        let bottom = NSLayoutConstraint(item: img_Avatar, attribute: .bottom, relatedBy: .equal, toItem: self.contentView, attribute: .bottom, multiplier: 1.0, constant: -21)
        NSLayoutConstraint.activate([trailing,width,height,bottom])
    }

    
}
