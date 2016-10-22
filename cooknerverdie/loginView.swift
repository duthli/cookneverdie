//
//  loginView.swift
//  cooknerverdie
//
//  Created by do duy hung on 10/18/16.
//  Copyright © 2016 do duy hung. All rights reserved.
//

import Foundation
import UIKit
//import OEANotification
class LoginView : BaseViewController,UITextFieldDelegate
{
    var tf_User : TextFieldLogin!
    var tf_Password : TextFieldLogin!
    
    var btn_create : UIButton!
    var btn_forgot : UIButton!
    var btn_login : ButtonLogin!
    
    override func viewDidLoad() {
        addbackground(imgName: "Background")
        addtf()
        addButton()
        isTransparent(trans: true)
    }
       func addtf()
    {
        //tf_User add
        tf_User = TextFieldLogin()
        tf_User.makeup(textField: tf_User)
        self.view.addSubview(tf_User)
        
        //constraints
        tf_User.translatesAutoresizingMaskIntoConstraints = false
        let leading = NSLayoutConstraint(item: tf_User, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 42)
        let trailing = NSLayoutConstraint(item: tf_User, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -42)
        let top = NSLayoutConstraint(item: tf_User, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: self.view.bounds.size.height/3)
        let height = NSLayoutConstraint(item: tf_User, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.1, constant: 0)
        NSLayoutConstraint.activate([leading,trailing,top,height])
        
        //tf_Password
            addTfPassword()
        tf_Password.makeup(textField: tf_Password)
        customRadiusTextField()
        }
    func addTfPassword()
    {
        tf_Password = TextFieldLogin()
        self.view.addSubview(tf_Password)
        tf_Password.translatesAutoresizingMaskIntoConstraints = false
        let leading = NSLayoutConstraint(item: tf_Password, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 42)
        let trailing = NSLayoutConstraint(item: tf_Password, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -42)
        let top = NSLayoutConstraint(item: tf_Password, attribute: .top, relatedBy: .equal, toItem: self.tf_User, attribute: .bottom, multiplier: 1.1, constant: 0)
        let height = NSLayoutConstraint(item: tf_Password, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.1, constant: 0)
        NSLayoutConstraint.activate([leading,trailing,top,height])

    }
    func customRadiusTextField(){
        tf_User.stringPlacaHolder(textField: tf_User)
        tf_User.addIconTextField(textField: tf_User,
                                 stringImage: "Username Icons")
        tf_User.delegate = self
        tf_Password.stringPlacaHolder(textField: tf_Password)
        tf_Password.addIconTextField(textField: tf_Password,
                                     stringImage: "Password Icons")
        
        tf_Password.delegate = self
    }
//MARK: Setup button
    func addButton()
    {
        addBtnCreate()
        addBtnForgot()
        addBtnLogin()
    }
    func addBtnCreate(){
        btn_create = UIButton()
        btn_create.setupNormalButton(btn: btn_create)
        btn_create.setTitle("Create an account", for: .normal)
        
        btn_create.addTarget(self, action: #selector(createAccount), for: .touchUpInside)
        
        self.view.addSubview(btn_create)
        
        
        //constraints
        
        
        btn_create.translatesAutoresizingMaskIntoConstraints = false
        let leading = NSLayoutConstraint(item: btn_create, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 42)
        let width = NSLayoutConstraint(item: btn_create, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .width, multiplier: 0.2, constant: 0)
        let top = NSLayoutConstraint(item: btn_create, attribute: .top, relatedBy: .equal, toItem: self.tf_Password, attribute: .bottom, multiplier: 1.0, constant: 0)
        let height = NSLayoutConstraint(item: btn_create, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.1, constant: 0)
        NSLayoutConstraint.activate([leading,width,top,height])
    }
    
    func addBtnForgot(){
        btn_forgot = UIButton()
        btn_forgot.setupNormalButton(btn: btn_forgot)
        btn_forgot.setTitle("Forgot Password ?", for: .normal)
        
        btn_forgot.addTarget(self, action: #selector(forgotAccount), for: .touchUpInside)

        self.view.addSubview(btn_forgot)
        
    //constraints
        btn_forgot.translatesAutoresizingMaskIntoConstraints = false
        let top = NSLayoutConstraint(item: btn_forgot, attribute: .top, relatedBy: .equal, toItem: self.tf_Password, attribute: .bottom, multiplier: 1.0, constant: 0)
        let trailing = NSLayoutConstraint(item: btn_forgot, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -42)
        let width = NSLayoutConstraint(item: btn_forgot, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .width, multiplier: 0.2, constant: 0)
        let height = NSLayoutConstraint(item: btn_forgot, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.1, constant: 0)
        NSLayoutConstraint.activate([trailing,top,width,height])
    }
    
    func addBtnLogin()
    {
        btn_login = ButtonLogin()
        btn_login.setUpBigButton(btn: btn_login)
        btn_login.setTitle("Login", for: .normal)
        
        btn_login.addTarget(self, action: #selector(loginAccount), for: .touchUpInside)
        
        self.view.addSubview(btn_login)
        //constraints
        btn_login.translatesAutoresizingMaskIntoConstraints = false
        let top = NSLayoutConstraint(item: btn_login, attribute: .top, relatedBy: .equal, toItem: self.btn_forgot, attribute: .bottom, multiplier: 1.0, constant: 0)
        let trailing = NSLayoutConstraint(item: btn_login, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -42)
        let leading = NSLayoutConstraint(item: btn_login, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 42)
        let height = NSLayoutConstraint(item: btn_login, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.1, constant: 0)
        NSLayoutConstraint.activate([trailing,top,leading,height])
    }
    
    
    func createAccount()
    {
        let createAccountView = CreateAccountView(nibName: "CreateAccountView", bundle: nil)
        //self.present(createAccountView, animated: true, completion: nil)
        navigationController?.pushViewController(createAccountView, animated: true)
    }
    func forgotAccount()
    {
        let forgotAccountView = ForgotPasswordVC(nibName: "forgotAccountView", bundle: nil)
        //self.present(forgotAccountView, animated: true, completion: nil)
        navigationController?.pushViewController(forgotAccountView, animated: true)

    }
    func loginAccount()
    {
        let mainView = MainView(nibName: "MainView", bundle: nil)
        navigationController?.pushViewController(mainView, animated: true)
    }
}




