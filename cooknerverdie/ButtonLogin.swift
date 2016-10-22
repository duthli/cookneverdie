//
//  ButtonLogin.swift
//  cooknerverdie
//
//  Created by do duy hung on 10/18/16.
//  Copyright © 2016 do duy hung. All rights reserved.
//

import Foundation
import UIKit
class ButtonLogin: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        boderRadiusButton(radius: 20)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        boderRadiusButton(radius: 20)
        
    }
    
    func boderRadiusButton(radius : CGFloat){
        self.layer.cornerRadius = radius
        self.layer.masksToBounds = true
        self.backgroundColor = UIColor.clear
        
    }
    func setBackgroundAndBorderWidth(backgroundColor : UIColor , boderWidth : CGFloat , boderColor : UIColor, titleColor: UIColor ){
        self.layer.backgroundColor = backgroundColor.cgColor
        self.layer.borderColor = boderColor.cgColor
        self.layer.borderWidth = boderWidth
        self.setTitleColor(titleColor, for: .normal)
        
    }
    
    func setBackgroundAndBorderWidth(backgroundColor : UIColor , boderWidth : CGFloat , boderColor : UIColor){
        self.layer.backgroundColor = backgroundColor.cgColor
        self.layer.borderColor = boderColor.cgColor
        self.layer.borderWidth = boderWidth
        
        
    }
    
    
}
