//
//  UILabel.swift
//  cooknerverdie
//
//  Created by do duy hung on 10/18/16.
//  Copyright © 2016 do duy hung. All rights reserved.
//

import Foundation
import UIKit
extension UILabel
{
    func setuplabel(lbl: UILabel){
        lbl.textColor = UIColor.white
        //lbl.font = UIFont.systemFont(ofSize: 14)
        lbl.textAlignment = .left
        lbl.adjustsFontSizeToFitWidth = true
        
    }

        func setuptrends(lbl: UILabel){
            lbl.textColor = UIColor.white
            lbl.textAlignment = .center
            lbl.adjustsFontSizeToFitWidth = true
        }
        func setupTitle(lbl: UILabel){
            lbl.textColor = UIColor.red
            lbl.textAlignment = .left
            lbl.adjustsFontSizeToFitWidth = true
        }
        func setupNormal(lbl: UILabel){
            lbl.textColor = UIColor.lightGray
            lbl.adjustsFontSizeToFitWidth = true
            
        }
        func setupItemFood(lbl: UILabel){
            lbl.textColor = UIColor.white
            lbl.adjustsFontSizeToFitWidth = true
            
        }
}
