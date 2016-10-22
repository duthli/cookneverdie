//
//  TextFieldLogin.swift
//  cooknerverdie
//
//  Created by do duy hung on 10/18/16.
//  Copyright © 2016 do duy hung. All rights reserved.
//

import Foundation
import UIKit
enum tf{
    case User
    case Password
}

class TextFieldLogin : UITextField
{
    let numberTag = 100
    let placeHolderUser = "Username"
    let placeHolderPassword = "Password"
    func showAndHiddenIconTextField(textField :UITextField, showAndHidden : Bool ){
        
        if(showAndHidden){
            textField.leftViewMode  = .always
            stringPlacaHolder(textField: textField)
        }else{
            textField.leftViewMode = .never
        }
        
    }

    func stringPlacaHolder (textField : UITextField){
        
        if(textField.tag ==  tf.User.hashValue + numberTag){
            textField.placeholder = placeHolderUser
        }
        else if (textField.tag == tf.Password.hashValue + numberTag){
            textField.placeholder = placeHolderPassword
        }
    }
    
    // add Icon TextField
    func addIconTextField(textField : UITextField, stringImage : String){
        let img = UIImageView(image: UIImage(named: stringImage))
        img.frame = CGRect(x: 0, y: 0, width: img.frame.width + 10, height: textField.frame.height)
        //img.frame = CGRectMake(0, 0, img.frame.width + 10 , textField.frame.height)
        textField.leftView = img
        textField.leftView?.contentMode = .center
        
        //--showHidden
        showAndHiddenIconTextField(textField: textField, showAndHidden: true)
        
    }
    
    func roundCorners(corners : UIRectCorner ,radius : CGFloat) {
        let bounds = self.bounds //-- lay bound cua textfield
        let maskPath = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: bounds.width, height: bounds.height))
        
        let maskLayer = CAShapeLayer()
        maskLayer.frame = bounds
        maskLayer.path = maskPath.cgPath
        
        self.layer.mask = maskLayer
        
        let frameLayer = CAShapeLayer()
        frameLayer.frame = bounds
        frameLayer.path = maskPath.cgPath
        frameLayer.strokeColor = UIColor.lightGray.cgColor
        frameLayer.fillColor = UIColor.white.cgColor
        
        self.layer.addSublayer(frameLayer)
    }
    func makeup(textField : UITextField)
    {
        textField.layer.backgroundColor = UIColor.gray.cgColor.copy(alpha: 0.6)
        textField.layer.cornerRadius = 20
        textField.textColor = UIColor.white
    }
}
