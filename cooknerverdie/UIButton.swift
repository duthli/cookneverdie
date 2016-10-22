//
//  UIButton.swift
//  cooknerverdie
//
//  Created by do duy hung on 10/18/16.
//  Copyright © 2016 do duy hung. All rights reserved.
//

import Foundation
import UIKit
extension UIButton
{
    func setupNormalButton(btn: UIButton){
        btn.layer.borderWidth = 0
        btn.layer.cornerRadius = 10
        btn.layer.backgroundColor = UIColor.white.cgColor.copy(alpha: 0)
        btn.titleLabel?.adjustsFontSizeToFitWidth = true
        btn.titleLabel?.textColor = UIColor.init(red: 149/255, green: 165/255, blue: 166/255, alpha: 0.1)
    }
    func setUpBigButton(btn: UIButton){
        btn.layer.borderWidth = 0
        btn.layer.cornerRadius = 10
        btn.layer.backgroundColor = UIColor.init(red: 231/255, green: 76/255, blue: 60/255, alpha: 1.0).cgColor
        btn.titleLabel?.adjustsFontSizeToFitWidth = true
    }


}
