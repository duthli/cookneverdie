//
//  MainView.swift
//  cooknerverdie
//
//  Created by do duy hung on 10/18/16.
//  Copyright © 2016 do duy hung. All rights reserved.
//

import UIKit

class MainView: UITabBarController,UITabBarControllerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let tabA = HomeView()
        let tabAItem = UITabBarItem(title: "HOME", image: UIImage(named:"home"), selectedImage: UIImage(named:"home"))
        tabA.tabBarItem = tabAItem
        
        let tabB = HotView()
        let tabBItem = UITabBarItem(title: "HOT", image: UIImage(named:"hot"), selectedImage: UIImage(named:"hot"))
        tabB.tabBarItem = tabBItem

        let tabC = profileView()
        let tabCItem = UITabBarItem(title: "Profile", image: UIImage(named:"chief"), selectedImage: UIImage(named:"chief"))
        tabC.tabBarItem = tabCItem
        
        self.viewControllers = [tabA,tabB,tabC]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
