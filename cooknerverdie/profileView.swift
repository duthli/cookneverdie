//
//  profileVC.swift
//  cooknerverdie
//
//  Created by do duy hung on 10/21/16.
//  Copyright © 2016 do duy hung. All rights reserved.
//

import UIKit

class profileView: BaseViewController,UITableViewDelegate,UITableViewDataSource {
    //img
    var img_Avatar : UIImageView!
    var img_Background : UIImageView!
    //label
    var lbl_Pincount: UILabel!
    var lbl_Followerscount: UILabel!
    var lbl_Followingcount: UILabel!
    
    var lbl_PinCountNumber : UILabel!
    var lbl_FollowerscountNumber : UILabel!
    var lbl_FollowingcountNumber: UILabel!
    //tableView
    var table_Albums: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        addbackground(imgName: "Background")
        addImg()
        addLabel()
        addTable()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addImg()
    {
        img_Avatar = UIImageView(image: UIImage(named: "avatar.png"))
        img_Avatar.contentMode = .scaleAspectFit
        self.view.addSubview(img_Avatar)
        // constraints
        img_Avatar.translatesAutoresizingMaskIntoConstraints = false
        let centerX = NSLayoutConstraint(item: img_Avatar, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0)
        let top = NSLayoutConstraint(item: img_Avatar, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: self.view.bounds.size.height / 5 )
        let height = NSLayoutConstraint(item: img_Avatar, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.2, constant: 0)
        NSLayoutConstraint.activate([centerX,top,height])
    }
    func addLabel()
    {
        lbl_Pincount = UILabel()
        lbl_Pincount.setupNormal(lbl: lbl_Pincount)
        lbl_Pincount.text = "Pin"
        lbl_Pincount.textAlignment = .left
        self.view.addSubview(lbl_Pincount)
        
        lbl_Followerscount = UILabel()
        lbl_Followerscount.setupNormal(lbl: lbl_Followerscount)
        lbl_Followerscount.text = "Followers"
        lbl_Followerscount.textAlignment = .center
        self.view.addSubview(lbl_Followerscount)
        
        lbl_Followingcount = UILabel()
        lbl_Followingcount.setupNormal(lbl: lbl_Followingcount)
        lbl_Followingcount.text = "Following"
        lbl_Followingcount.textAlignment = .right
        self.view.addSubview(lbl_Followingcount)
        // Count Number
        
        lbl_PinCountNumber = UILabel()
        lbl_PinCountNumber.setupNormal(lbl: lbl_PinCountNumber)
        lbl_PinCountNumber.text = "98"
        lbl_PinCountNumber.textAlignment = .left
        self.view.addSubview(lbl_PinCountNumber)
        
        lbl_FollowerscountNumber = UILabel()
        lbl_FollowerscountNumber.setupNormal(lbl: lbl_FollowerscountNumber)
        lbl_FollowerscountNumber.text = "99"
        lbl_FollowerscountNumber.textAlignment = .center
        self.view.addSubview(lbl_FollowerscountNumber)
        
        lbl_FollowingcountNumber = UILabel()
        lbl_FollowingcountNumber.setupNormal(lbl: lbl_FollowingcountNumber)
        lbl_FollowingcountNumber.text = "100"
        lbl_FollowingcountNumber.textAlignment = .center
        self.view.addSubview(lbl_FollowingcountNumber)
        
        
        
        //constraints
        constraints_lbl_Pincount()
        constraints_lbl_Followerscount()
        constraints_lbl_Followingcount()
        constraints_lbl_PinCountNumber()
        constraints_lbl_FollowerscountNumber()
        constraints_lbl_FollowingcountNumber()
    }
    func addTable()
    {
        table_Albums = UITableView()
        table_Albums.layer.cornerRadius = 8
        table_Albums.backgroundColor = UIColor.clear
        table_Albums.showsHorizontalScrollIndicator = false
        table_Albums.showsVerticalScrollIndicator = false
        table_Albums.separatorStyle = .none
        table_Albums.register(menuCell.self, forCellReuseIdentifier: "albumsCell")
        self.view.addSubview(table_Albums)
        table_Albums.delegate = self
        table_Albums.dataSource = self
        //constraints
        table_Albums.translatesAutoresizingMaskIntoConstraints = false
        let top = NSLayoutConstraint(item: table_Albums, attribute: .top, relatedBy: .equal, toItem: self.lbl_PinCountNumber, attribute: .bottom, multiplier: 1.1, constant: 0)
        let leading = NSLayoutConstraint(item: table_Albums, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 21)
        let trailing = NSLayoutConstraint(item: table_Albums, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -21)
        let bottom = NSLayoutConstraint(item: table_Albums, attribute: .bottom, relatedBy: .equal, toItem: self.view, attribute: .bottom, multiplier: 1.0, constant: -10)
        NSLayoutConstraint.activate([top,leading,trailing,bottom])
        

    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //cellAlbum = tableView.dequeueReusableCell(withIdentifier: "albumcell", for: indexPath) as! AlbumsCell
        let cellAlbum = tableView.dequeueReusableCell(withIdentifier: "albumsCell", for: indexPath) as! menuCell
        cellAlbum.lbl_Title.text = "cafe"
        cellAlbum.lbl_Trend.text = "Hot"
        cellAlbum.img_Background.image = UIImage(named: "itemcell")
        return cellAlbum
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor.clear
        return headerView
    }
//MARK: Constraints
    func constraints_lbl_Pincount()
    {
        lbl_Pincount.translatesAutoresizingMaskIntoConstraints = false
        let top = NSLayoutConstraint(item: lbl_Pincount, attribute: .top, relatedBy: .equal, toItem: self.img_Avatar, attribute: .bottom, multiplier: 1.1, constant: 0)
        let leading = NSLayoutConstraint(item: lbl_Pincount, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 21)
        let width = NSLayoutConstraint(item: lbl_Pincount, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .width, multiplier: 0.2, constant: 0)
        let height = NSLayoutConstraint(item: lbl_Pincount, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.05, constant: 0)
        NSLayoutConstraint.activate([top,leading,width,height])
    }
    func constraints_lbl_Followerscount()
    {
        lbl_Followerscount.translatesAutoresizingMaskIntoConstraints = false
        let top = NSLayoutConstraint(item: lbl_Followerscount, attribute: .top, relatedBy: .equal, toItem: self.img_Avatar, attribute: .bottom, multiplier: 1.1, constant: 0)
        let leading = NSLayoutConstraint(item: lbl_Followerscount, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0)
        let width = NSLayoutConstraint(item: lbl_Followerscount, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .width, multiplier: 0.2, constant: 0)
        let height = NSLayoutConstraint(item: lbl_Followerscount, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.05, constant: 0)
        NSLayoutConstraint.activate([top,leading,width,height])
    }
    func constraints_lbl_Followingcount()
    {
        lbl_Followingcount.translatesAutoresizingMaskIntoConstraints = false
        let top = NSLayoutConstraint(item: lbl_Followingcount, attribute: .top, relatedBy: .equal, toItem: self.img_Avatar, attribute: .bottom, multiplier: 1.1, constant: 0)
        let trailing = NSLayoutConstraint(item: lbl_Followingcount, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -21)
        let width = NSLayoutConstraint(item: lbl_Followingcount, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .width, multiplier: 0.2, constant: 0)
        let height = NSLayoutConstraint(item: lbl_Followingcount, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.05, constant: 0)
        NSLayoutConstraint.activate([top,trailing,width,height])
    }
    
//MARK: Count Number
    func constraints_lbl_PinCountNumber()
    {
        lbl_PinCountNumber.translatesAutoresizingMaskIntoConstraints = false
        let top = NSLayoutConstraint(item: lbl_PinCountNumber, attribute: .top, relatedBy: .equal, toItem: self.lbl_Pincount, attribute: .bottom, multiplier: 1.01, constant: 0)
        let leading = NSLayoutConstraint(item: lbl_PinCountNumber, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 21)
        let width = NSLayoutConstraint(item: lbl_PinCountNumber, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .width, multiplier: 0.2, constant: 0)
        let height = NSLayoutConstraint(item: lbl_PinCountNumber, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.1, constant: 0)
        NSLayoutConstraint.activate([top,leading,width,height])
    }

    
    func constraints_lbl_FollowerscountNumber()
    {
        lbl_FollowerscountNumber.translatesAutoresizingMaskIntoConstraints = false
        let top = NSLayoutConstraint(item: lbl_FollowerscountNumber, attribute: .top, relatedBy: .equal, toItem: self.lbl_Pincount, attribute: .bottom, multiplier: 1.01, constant: 0)
        let leading = NSLayoutConstraint(item: lbl_FollowerscountNumber, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0)
        let width = NSLayoutConstraint(item: lbl_FollowerscountNumber, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .width, multiplier: 0.2, constant: 0)
        let height = NSLayoutConstraint(item: lbl_FollowerscountNumber, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.1, constant: 0)
        NSLayoutConstraint.activate([top,leading,width,height])
    }

    
    func constraints_lbl_FollowingcountNumber()
    {
        lbl_FollowingcountNumber.translatesAutoresizingMaskIntoConstraints = false
        let top = NSLayoutConstraint(item: lbl_FollowingcountNumber, attribute: .top, relatedBy: .equal, toItem: self.lbl_Pincount, attribute: .bottom, multiplier: 1.01, constant: 0)
        let trailing = NSLayoutConstraint(item: lbl_FollowingcountNumber, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -21)
        let width = NSLayoutConstraint(item: lbl_FollowingcountNumber, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .width, multiplier: 0.2, constant: 0)
        let height = NSLayoutConstraint(item: lbl_FollowingcountNumber, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.1, constant: 0)
        NSLayoutConstraint.activate([top,trailing,width,height])
    }


}
