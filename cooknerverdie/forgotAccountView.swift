//
//  forgotAccountView.swift
//  cooknerverdie
//
//  Created by do duy hung on 10/18/16.
//  Copyright © 2016 do duy hung. All rights reserved.
//

import UIKit

class ForgotPasswordVC: BaseViewController {
    
    var lbl_Title : UILabel!
    var tf_Email : UITextField!
    var btn_Confirm : UIButton!
    var btn_back : UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        addbackground(imgName: "Background")
        create_lbl_Title()
        create_tf_Email()
        create_btn_Confirm()
        //createBtnback()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
    }
    
    //MARK: Create
    func createBtnback()
    {
        btn_back = UIButton()
        btn_back.setTitle("back", for: .normal)
        btn_back.addTarget(self, action: #selector(back_login), for: .touchUpInside)
        self.view.addSubview(btn_back)
        //constraints
        
        btn_back.translatesAutoresizingMaskIntoConstraints = false
        let leading = NSLayoutConstraint(item: btn_back, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 5)
        let top = NSLayoutConstraint(item: btn_back, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1, constant: 0)
        let height = NSLayoutConstraint(item: btn_back, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.1, constant: 0)
        let width = NSLayoutConstraint(item: btn_back, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.1, constant: 0)
        NSLayoutConstraint.activate([leading,top,width,height])
    }

    func back_login()
    {
        dismiss(animated: true, completion: nil)
    }
    
    func create_lbl_Title(){
        lbl_Title = UILabel()
        lbl_Title.setuplabel(lbl: lbl_Title)
        lbl_Title.text = "Please Enter Your Email !"
        lbl_Title.textAlignment = .center
        self.view.addSubview(lbl_Title)
        constraints_lbl_Title()
        
    }
    func create_tf_Email()
    {
        tf_Email = UITextField()
        tf_Email.setuptf(tf: tf_Email)
        self.view.addSubview(tf_Email)
        constraints_tf_Email()
    }
    
    func create_btn_Confirm(){
        btn_Confirm = UIButton()
        btn_Confirm.setUpBigButton(btn: btn_Confirm)
        btn_Confirm.setTitle("Confirm", for: .normal)
        self.view.addSubview(btn_Confirm)
        constraints_btn_Confirm()
    }
    
    //MARK: Constraints
    func constraints_lbl_Title(){
        lbl_Title.translatesAutoresizingMaskIntoConstraints = false
        let leading = NSLayoutConstraint(item: lbl_Title, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: self.view.bounds.size.width * 0.05)
        let trailing = NSLayoutConstraint(item: lbl_Title, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 0)
        let top = NSLayoutConstraint(item: lbl_Title, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: self.view.center.y/3)
        let height = NSLayoutConstraint(item: lbl_Title, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.2, constant: 0)
        NSLayoutConstraint.activate([leading,trailing,top,height])
    }
    func constraints_tf_Email(){
        
        tf_Email.translatesAutoresizingMaskIntoConstraints = false
        let leading = NSLayoutConstraint(item: tf_Email, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 21)
        let trailing = NSLayoutConstraint(item: tf_Email, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -21)
        let top = NSLayoutConstraint(item: tf_Email, attribute: .top, relatedBy: .equal, toItem: self.lbl_Title, attribute: .bottom, multiplier: 1.2, constant: 0)
        let height = NSLayoutConstraint(item: tf_Email, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.1, constant: 0)
        NSLayoutConstraint.activate([leading,trailing,top,height])
        
    }
    
    func constraints_btn_Confirm(){
        btn_Confirm.translatesAutoresizingMaskIntoConstraints = false
        let leading = NSLayoutConstraint(item: btn_Confirm, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 21)
        let trailing = NSLayoutConstraint(item: btn_Confirm, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -21)
        let top = NSLayoutConstraint(item: btn_Confirm, attribute: .top, relatedBy: .equal, toItem: self.tf_Email, attribute: .bottom, multiplier: 1.2, constant: 0)
        let height = NSLayoutConstraint(item: btn_Confirm, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.1, constant: 0)
        NSLayoutConstraint.activate([leading,trailing,top,height])
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
