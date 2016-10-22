//
//  BaseNavigationBar.swift
//  cooknerverdie
//
//  Created by do duy hung on 10/18/16.
//  Copyright © 2016 do duy hung. All rights reserved.
//

import Foundation
import UIKit
class BaseNavigationController: UINavigationController
{
    override func viewDidLoad()
    {
        
    }
    func setupNavigation(){
        UINavigationBar.appearance().tintColor = UIColor.white
        UINavigationBar.appearance().titleTextAttributes = ([NSForegroundColorAttributeName: UIColor.white])
    }
}
