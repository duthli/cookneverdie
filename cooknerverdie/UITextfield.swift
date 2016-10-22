//
//  UITextfield.swift
//  cooknerverdie
//
//  Created by do duy hung on 10/18/16.
//  Copyright © 2016 do duy hung. All rights reserved.
//

import Foundation
import UIKit
extension UITextField
{
    func setuptf(tf:UITextField){
        tf.layer.backgroundColor = UIColor.gray.cgColor.copy(alpha: 0.6)
        tf.layer.cornerRadius = 20
        tf.textColor = UIColor.white
    }

}
