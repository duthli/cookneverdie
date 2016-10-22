//
//  HotView.swift
//  cooknerverdie
//
//  Created by do duy hung on 10/18/16.
//  Copyright © 2016 do duy hung. All rights reserved.
//

import UIKit

class HotView: BaseViewController,UITableViewDelegate,UITableViewDataSource {

    
    var table_hot : UITableView!
    var hotcell : HotCell!

    override func viewDidLoad() {
        super.viewDidLoad()
        addbackground(imgName: "Background")
        //table
        createTable()
        // Do any additional setup after loading the view.
    }
    
    func createTable(){
        table_hot = UITableView(frame: self.view.frame)
        self.view.addSubview(table_hot)
        table_hot.register(HotCell.self, forCellReuseIdentifier: "HotCell")
        constraintForTable_Hot()
        table_hot.delegate = self
        table_hot.dataSource = self
        table_hot.layer.cornerRadius = 8
        table_hot.backgroundColor = UIColor.clear//UIColor.init(red: 255/255, green: 255/255, blue: 255/255, alpha: 0)
        table_hot.showsHorizontalScrollIndicator = false
        table_hot.showsVerticalScrollIndicator = false
        
        
        
    }
    
    func constraintForTable_Hot(){
        table_hot.translatesAutoresizingMaskIntoConstraints = false
        let leading = NSLayoutConstraint(item: table_hot, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 21)
        let trailing = NSLayoutConstraint(item: table_hot, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -21)
        let top = NSLayoutConstraint(item: table_hot, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: self.view.bounds.size.width / 3)
        let bottom = NSLayoutConstraint(item: table_hot, attribute: .bottom, relatedBy: .equal, toItem: self.view, attribute: .bottom, multiplier: 1.0, constant: -21)
        
        NSLayoutConstraint.activate([leading,trailing,top,bottom])
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        hotcell = tableView.dequeueReusableCell(withIdentifier: "HotCell", for: indexPath) as! HotCell
        hotcell.img_Background.image = UIImage(named: "itemcell.png")
        hotcell.lbl_Name.text = "Hung"
        hotcell.lbl_Title.text = "NUOC LOC"
        hotcell.lbl_Date.text = "0 days ago"
        hotcell.img_Avatar.image = UIImage(named: "itemcell.png")
        return hotcell
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

}
