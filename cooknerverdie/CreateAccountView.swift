//
//  CreateAccountView.swift
//  cooknerverdie
//
//  Created by do duy hung on 10/18/16.
//  Copyright © 2016 do duy hung. All rights reserved.
//

import UIKit

class CreateAccountView: BaseViewController {

    var tf_Email : UITextField!
    var tf_FirstName : UITextField!
    var tf_LastName : UITextField!
    var tf_Password : UITextField!
    
    //label
    var lbl_Email: UILabel!
    var lbl_FirstName: UILabel!
    var lbl_LastName: UILabel!
    var lbl_password: UILabel!
    
    //button
    var btn_Register : UIButton!
    var btn_back : UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        //UIApplication.shared.setStatusBarHidden(true, with: UIStatusBarAnimation.fade)
        addbackground(imgName: "Background")
        createLabel()
        createTextField()
        create_btn_Register()
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
    //MARK: create label text field
    func createLabel(){
        
        lbl_Email = UILabel()
        lbl_FirstName = UILabel()
        lbl_LastName = UILabel()
        lbl_password = UILabel()
        
        //text
        lbl_FirstName.text = "FirstName :"
        lbl_LastName.text = "LastName :"
        lbl_Email.text = "Email :"
        lbl_password.text = "Password :"
        
        
        //setup
        lbl_FirstName.setuplabel(lbl: lbl_FirstName)
        lbl_LastName.setuplabel(lbl: lbl_LastName)
        lbl_Email.setuplabel(lbl: lbl_Email)
        lbl_password.setuplabel(lbl: lbl_password)
        // add view
        self.view.addSubview(lbl_Email)
        self.view.addSubview(lbl_FirstName)
        self.view.addSubview(lbl_LastName)
        self.view.addSubview(lbl_password)
        
        //constraints
        constraints_lbl_FirstName()
        constraints_lbl_LastName()
        constraints_lbl_Email()
        constraints_lbl_password()
    }
    func createTextField(){
        tf_Email = UITextField()
        tf_FirstName = UITextField()
        tf_LastName = UITextField()
        tf_Password = UITextField()
        tf_Password.isSecureTextEntry = true
        tf_FirstName.setuptf(tf: tf_FirstName)
        tf_LastName.setuptf(tf: tf_LastName)
        tf_Email.setuptf(tf: tf_Email)
        tf_Password.setuptf(tf: tf_Password)
        
        
        self.view.addSubview(tf_Email)
        self.view.addSubview(tf_FirstName)
        self.view.addSubview(tf_LastName)
        self.view.addSubview(tf_Password)
        
        
        constraints_tf_FirstName()
        constraints_tf_LastName()
        constraints_tf_Email()
        constraints_tf_Password()
        
    }
    
    func create_btn_Register(){
        btn_Register = UIButton()
        btn_Register.setUpBigButton(btn: btn_Register)
        btn_Register.setTitle("Register", for: .normal)
        btn_Register.addTarget(self, action: #selector(Register), for: .touchUpInside)
        self.view.addSubview(btn_Register)
        constraints_btn_Register()
    }
//MARK: back
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
    //MARK: constraints it
    func constraints_lbl_FirstName(){
        lbl_FirstName.translatesAutoresizingMaskIntoConstraints = false
        let leading = NSLayoutConstraint(item: lbl_FirstName, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 5)
        let top = NSLayoutConstraint(item: lbl_FirstName, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1, constant: self.view.center.y/3)
        let height = NSLayoutConstraint(item: lbl_FirstName, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.1, constant: 0)
        let width = NSLayoutConstraint(item: lbl_FirstName, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.15, constant: 0)
        NSLayoutConstraint.activate([leading,top,width,height])
    }
    func constraints_lbl_LastName(){
        lbl_LastName.translatesAutoresizingMaskIntoConstraints = false
        let leading = NSLayoutConstraint(item: lbl_LastName, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 5)
        let top = NSLayoutConstraint(item: lbl_LastName, attribute: .top, relatedBy: .equal, toItem: self.lbl_FirstName, attribute: .bottom, multiplier: 1.1, constant: 0)
        let height = NSLayoutConstraint(item: lbl_LastName, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.1, constant: 0)
        let width = NSLayoutConstraint(item: lbl_LastName, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.15, constant: 0)
        NSLayoutConstraint.activate([leading,top,width,height])
    }
    func constraints_lbl_Email(){
        lbl_Email.translatesAutoresizingMaskIntoConstraints = false
        let leading = NSLayoutConstraint(item: lbl_Email, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 5)
        let top = NSLayoutConstraint(item: lbl_Email, attribute: .top, relatedBy: .equal, toItem: self.lbl_LastName, attribute: .bottom, multiplier: 1.1, constant: 0)
        let height = NSLayoutConstraint(item: lbl_Email, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.1, constant: 0)
        let width = NSLayoutConstraint(item: lbl_Email, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.15, constant: 0)
        NSLayoutConstraint.activate([leading,top,width,height])
    }
    func constraints_lbl_password(){
        lbl_password.translatesAutoresizingMaskIntoConstraints = false
        let leading = NSLayoutConstraint(item: lbl_password, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 5)
        let top = NSLayoutConstraint(item: lbl_password, attribute: .top, relatedBy: .equal, toItem: self.lbl_Email, attribute: .bottom, multiplier: 1.1, constant: 0)
        let height = NSLayoutConstraint(item: lbl_password, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.1, constant: 0)
        let width = NSLayoutConstraint(item: lbl_password, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.15, constant: 0)
        NSLayoutConstraint.activate([leading,top,width,height])
    }
    
    
    
    func constraints_tf_FirstName(){
        //var x = self.view.bounds.size.height/3 - ((self.view.bounds.size.height * 0.1)/2)
        tf_FirstName.translatesAutoresizingMaskIntoConstraints = false
        let leading = NSLayoutConstraint(item: tf_FirstName, attribute: .leading, relatedBy: .equal, toItem: self.lbl_FirstName, attribute: .trailing, multiplier: 1.0, constant: 10)
        let trailing = NSLayoutConstraint(item: tf_FirstName, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -5)
        let top = NSLayoutConstraint(item: tf_FirstName, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1, constant: self.view.center.y/3)
        let height = NSLayoutConstraint(item: tf_FirstName, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.1, constant: 0)
        NSLayoutConstraint.activate([leading,trailing,top,height])
    }
    func constraints_tf_LastName(){
        //var x = self.view.bounds.size.height/3 - ((self.view.bounds.size.height * 0.1)/2)
        tf_LastName.translatesAutoresizingMaskIntoConstraints = false
        let leading = NSLayoutConstraint(item: tf_LastName, attribute: .leading, relatedBy: .equal, toItem: self.lbl_LastName, attribute: .trailing, multiplier: 1.0, constant: 10)
        let trailing = NSLayoutConstraint(item: tf_LastName, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -5)
        let top = NSLayoutConstraint(item: tf_LastName, attribute: .top, relatedBy: .equal, toItem: self.tf_FirstName, attribute: .bottom, multiplier: 1.1, constant: 0)
        let height = NSLayoutConstraint(item: tf_LastName, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.1, constant: 0)
        NSLayoutConstraint.activate([leading,trailing,top,height])
    }
    
    func constraints_tf_Email(){
        //var x = self.view.bounds.size.height/3 - ((self.view.bounds.size.height * 0.1)/2)
        tf_Email.translatesAutoresizingMaskIntoConstraints = false
        let leading = NSLayoutConstraint(item: tf_Email, attribute: .leading, relatedBy: .equal, toItem: self.lbl_Email, attribute: .trailing, multiplier: 1.0, constant: 10)
        let trailing = NSLayoutConstraint(item: tf_Email, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -5)
        let top = NSLayoutConstraint(item: tf_Email, attribute: .top, relatedBy: .equal, toItem: self.tf_LastName, attribute: .bottom, multiplier: 1.1, constant: 0)
        let height = NSLayoutConstraint(item: tf_Email, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.1, constant: 0)
        NSLayoutConstraint.activate([leading,trailing,top,height])
    }
    func constraints_tf_Password(){
        //var x = self.view.bounds.size.height/3 - ((self.view.bounds.size.height * 0.1)/2)
        tf_Password.translatesAutoresizingMaskIntoConstraints = false
        let leading = NSLayoutConstraint(item: tf_Password, attribute: .leading, relatedBy: .equal, toItem: self.lbl_password, attribute: .trailing, multiplier: 1.0, constant: 10)
        let trailing = NSLayoutConstraint(item: tf_Password, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -5)
        let top = NSLayoutConstraint(item: tf_Password, attribute: .top, relatedBy: .equal, toItem: self.tf_Email, attribute: .bottom, multiplier: 1.1, constant: 0)
        let height = NSLayoutConstraint(item: tf_Password, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.1, constant: 0)
        NSLayoutConstraint.activate([leading,trailing,top,height])
    }
    
    func constraints_btn_Register(){
        btn_Register.translatesAutoresizingMaskIntoConstraints = false
        let leading = NSLayoutConstraint(item: btn_Register, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 21)
        let trailing = NSLayoutConstraint(item: btn_Register, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -21)
        let top = NSLayoutConstraint(item: btn_Register, attribute: .top, relatedBy: .equal, toItem: self.tf_Password, attribute: .bottom, multiplier: 1.1, constant: 0)
        let height = NSLayoutConstraint(item: btn_Register, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.1, constant: 0)
        NSLayoutConstraint.activate([leading,trailing,top,height])
        
    }
    //MARK: action
    
    func Register(){
        print("dang ky")
    }
    func back_login()
    {
        dismiss(animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

