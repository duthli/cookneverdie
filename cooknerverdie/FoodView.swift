//
//  FoodView.swift
//  cooknerverdie
//
//  Created by do duy hung on 10/21/16.
//  Copyright © 2016 do duy hung. All rights reserved.
//

import UIKit

class FoodView: BaseViewController {
    //infoView
    var infoView : UIView!
    var btn_Love : UIButton!
    var btn_Share : UIButton!
    var btn_Pin : UIButton!
    var btn_Avatar : UIButton!
    var btn_Name: UIButton!
    var lbl_views : UILabel!
    var lbl_Date : UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addbackground(imgName: "Background")
        add_InfoView()
        addButton()
        addLabel()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func viewWillAppear(_ animated: Bool) {
        print("aa")
    }
    
    func add_InfoView()
    {
        infoView = UIView()
        infoView.backgroundColor = UIColor.lightGray
        infoView.alpha = 0.5
        infoView.layer.cornerRadius = 10
        self.view.addSubview(infoView)
        //constraints
        infoView.translatesAutoresizingMaskIntoConstraints = false
        let leading = NSLayoutConstraint(item: infoView, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 21)
        let trailing = NSLayoutConstraint (item: infoView, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -21)
        let centerY = NSLayoutConstraint(item: infoView, attribute: .centerY, relatedBy: .equal, toItem: self.view, attribute: .centerY, multiplier: 0.8, constant: 0)
        let height = NSLayoutConstraint(item: infoView, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.14, constant: 0)
        NSLayoutConstraint.activate([leading,trailing,centerY,height])
    }
    
//MARK: add button
    func addButton()
    {

        add_Btn_Love()
        add_Btn_Share()
        add_Btn_Pin()
        add_btn_Avatar()
        add_btn_Name()
        //Share button
       
    }
    func add_Btn_Love()
    {
        btn_Love = UIButton()
        btn_Love.setImage(UIImage(named: "love"), for: .normal)
        btn_Love.setTitle("Love", for: .normal)
        btn_Love.addTarget(self, action: #selector(action_love), for: .touchUpInside)
        self.view.addSubview(btn_Love)
        //constraints
        btn_Love.translatesAutoresizingMaskIntoConstraints = false
        let leading = NSLayoutConstraint(item: btn_Love, attribute: .leading, relatedBy: .equal, toItem: self.infoView, attribute: .leading, multiplier: 1.0, constant: 5)
        let width = NSLayoutConstraint(item: btn_Love, attribute: .width, relatedBy: .equal, toItem: self.infoView, attribute: .width, multiplier: 0.2, constant: 0)
        let height = NSLayoutConstraint(item: btn_Love, attribute: .height, relatedBy: .equal, toItem: self.infoView, attribute: .height, multiplier: 0.3, constant: 0)
        let top = NSLayoutConstraint(item: btn_Love, attribute: .top, relatedBy: .equal, toItem: self.infoView, attribute: .top, multiplier: 1.0, constant: 0)
        NSLayoutConstraint.activate([leading,width,height,top])
    }
    func add_Btn_Share()
    {
        btn_Share = UIButton()
        btn_Share.setImage(UIImage(named: "share"), for: .normal)
        btn_Share.setTitle("Share", for: .normal)
        btn_Share.addTarget(self, action: #selector(action_share), for: .touchUpInside)
        self.view.addSubview(btn_Share)
        //constraints
        btn_Share.translatesAutoresizingMaskIntoConstraints = false
        let leading = NSLayoutConstraint(item: btn_Share, attribute: .centerX, relatedBy: .equal, toItem: self.infoView, attribute: .centerX, multiplier: 1.0, constant: 0)
        let width = NSLayoutConstraint(item: btn_Share, attribute: .width, relatedBy: .equal, toItem: self.infoView, attribute: .width, multiplier: 0.3, constant: 0)
        let height = NSLayoutConstraint(item: btn_Share, attribute: .height, relatedBy: .equal, toItem: self.infoView, attribute: .height, multiplier: 0.3, constant: 0)
        let top = NSLayoutConstraint(item: btn_Share, attribute: .top, relatedBy: .equal, toItem: self.infoView, attribute: .top, multiplier: 1.0, constant: 0)
        NSLayoutConstraint.activate([leading,width,height,top])

    }
    func add_Btn_Pin()
    {
        btn_Pin = UIButton()
        btn_Pin.setImage(UIImage(named: "pin"), for: .normal)
        btn_Pin.setTitle("Pin", for: .normal)
        btn_Pin.addTarget(self, action: #selector(action_pin), for: .touchUpInside)
        self.view.addSubview(btn_Pin)
        //constraints
        btn_Pin.translatesAutoresizingMaskIntoConstraints = false
        let trailing = NSLayoutConstraint(item: btn_Pin, attribute: .trailing, relatedBy: .equal, toItem: self.infoView, attribute: .trailing, multiplier: 1.0, constant: -5)
        let width = NSLayoutConstraint(item: btn_Pin, attribute: .width, relatedBy: .equal, toItem: self.infoView, attribute: .width, multiplier: 0.2, constant: 0)
        let height = NSLayoutConstraint(item: btn_Pin, attribute: .height, relatedBy: .equal, toItem: self.infoView, attribute: .height, multiplier: 0.3, constant: 0)
        let top = NSLayoutConstraint(item: btn_Pin, attribute: .top, relatedBy: .equal, toItem: self.infoView, attribute: .top, multiplier: 1.0, constant: 0)
        NSLayoutConstraint.activate([trailing,width,height,top])
    }
    func add_btn_Avatar()
    {
        btn_Avatar = UIButton()
        btn_Avatar.setImage(UIImage(named: "avatar.png"), for: .normal)
        btn_Avatar.addTarget(self, action: #selector(action_avatar), for: .touchUpInside)
        self.view.addSubview(btn_Avatar)
        //constraints
        btn_Avatar.translatesAutoresizingMaskIntoConstraints = false
        let leading = NSLayoutConstraint(item: btn_Avatar, attribute: .leading, relatedBy: .equal, toItem: self.infoView, attribute: .leading, multiplier: 1.0, constant: 5)
        let width = NSLayoutConstraint(item: btn_Avatar, attribute: .width, relatedBy: .equal, toItem: self.infoView, attribute: .width, multiplier: 0.15, constant: 0)
        let height = NSLayoutConstraint(item: btn_Avatar, attribute: .height, relatedBy: .equal, toItem: self.infoView, attribute: .height, multiplier: 0.4, constant: 0)
        let bottom = NSLayoutConstraint(item: btn_Avatar, attribute: .bottom, relatedBy: .equal, toItem: self.infoView, attribute: .bottom, multiplier: 1.0, constant: -10)
        NSLayoutConstraint.activate([leading,width,height,bottom])
        btn_Avatar.layer.cornerRadius = self.btn_Avatar.frame.height / 2
        btn_Avatar.layer.masksToBounds = false
        btn_Avatar.clipsToBounds = true
    }
    
    func add_btn_Name()
    {
        btn_Name = UIButton()
        btn_Name.setTitle("GOD", for: .normal)
        btn_Name.addTarget(self, action: #selector(action_avatar), for: .touchUpInside)
        self.view.addSubview(btn_Name)
        //constraints
        btn_Name.translatesAutoresizingMaskIntoConstraints = false
        let leading = NSLayoutConstraint(item: btn_Name, attribute: .leading, relatedBy: .equal, toItem: self.btn_Avatar, attribute: .trailing, multiplier: 1.0, constant: 5)
        let width = NSLayoutConstraint(item: btn_Name, attribute: .width, relatedBy: .equal, toItem: self.infoView, attribute: .width, multiplier: 0.15, constant: 0)
        let height = NSLayoutConstraint(item: btn_Name, attribute: .height, relatedBy: .equal, toItem: self.infoView, attribute: .height, multiplier: 0.4, constant: 0)
        let bottom = NSLayoutConstraint(item: btn_Name, attribute: .bottom, relatedBy: .equal, toItem: self.infoView, attribute: .bottom, multiplier: 1.0, constant: -10)
        NSLayoutConstraint.activate([leading,width,height,bottom])
    }

    func action_love()
    {
        print("111")
    }
    func action_share()
    {
        print("222")
    }
    func action_pin()
    {
        print("333")
    }
    func action_avatar()
    {
        print("444")
    }
    
//MARK: add label
    
    func addLabel()
    {
        add_lbl_Date()
        add_lbl_views()
    }
    func add_lbl_views()
    {
        lbl_views = UILabel()
        lbl_views.setupNormal(lbl: lbl_views)
        lbl_views.text = "6969 views"
        lbl_views.textColor = UIColor.init(red: 44/255, green: 62/255, blue: 80/255, alpha: 0.5)
        lbl_views.textAlignment = .left
        self.view.addSubview(lbl_views)
        //constraints
        lbl_views.translatesAutoresizingMaskIntoConstraints = false
        let leading = NSLayoutConstraint(item: lbl_views, attribute: .leading, relatedBy: .equal, toItem: self.infoView, attribute: .leading, multiplier: 1.0, constant: 10)
        let width = NSLayoutConstraint(item: lbl_views, attribute: .width, relatedBy: .equal, toItem: self.infoView, attribute: .width, multiplier: 0.3, constant: 0)
        let height = NSLayoutConstraint(item: lbl_views, attribute: .height, relatedBy: .equal, toItem: self.infoView, attribute: .height, multiplier: 0.3, constant: 0)
        let top = NSLayoutConstraint(item: lbl_views, attribute: .top, relatedBy: .equal, toItem: self.btn_Love, attribute: .top, multiplier: 1.1, constant: 0)
        NSLayoutConstraint.activate([leading,width,height,top])
    }
    func add_lbl_Date()
    {
        lbl_Date = UILabel()
        lbl_Date.setupNormal(lbl: lbl_Date)
        lbl_Date.text = "96 days ago"
        lbl_Date.textColor = UIColor.init(red: 44/255, green: 62/255, blue: 80/255, alpha: 0.5)
        lbl_Date.textAlignment = .left
        self.view.addSubview(lbl_Date)
        //constraints
        lbl_Date.translatesAutoresizingMaskIntoConstraints = false
        let trailing = NSLayoutConstraint(item: lbl_Date, attribute: .trailing, relatedBy: .equal, toItem: self.infoView, attribute: .trailing, multiplier: 1.0, constant: -10)
        let width = NSLayoutConstraint(item: lbl_Date, attribute: .width, relatedBy: .equal, toItem: self.infoView, attribute: .width, multiplier: 0.3, constant: 0)
        let height = NSLayoutConstraint(item: lbl_Date, attribute: .height, relatedBy: .equal, toItem: self.infoView, attribute: .height, multiplier: 0.3, constant: 0)
        let top = NSLayoutConstraint(item: lbl_Date, attribute: .top, relatedBy: .equal, toItem: self.btn_Love, attribute: .top, multiplier: 1.1, constant: 0)
        NSLayoutConstraint.activate([trailing,width,height,top])
    }

}
