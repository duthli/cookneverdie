//
//  BaseViewController.swift
//  cooknerverdie
//
//  Created by do duy hung on 10/18/16.
//  Copyright © 2016 do duy hung. All rights reserved.
//

import Foundation
//import NVActivityIndicatorView
import UIKit
internal class BaseViewController : UIViewController
{
    internal override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    internal override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    internal func setTitleView(title: String)
    {
        self.navigationItem.title = title
    }
    
    public func alertView(title : String ,message : String,titleAction : String, completionHandle : (() -> Void)?){
        let alertVC = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: titleAction, style: .default, handler: nil)
        
        alertVC.addAction(action)
        
        self.present(alertVC, animated: true, completion: nil)
        
        completionHandle?()
    }
//    func activeActivityIndicator()
//    {
//        startAnimating(CGSize(width: 50,height: 50), message: "", type: .BallSpinFadeLoader, color: UIColor.whiteColor(), padding: 1.0, displayTimeThreshold: 1, minimumDisplayTime: 1)
//    }
//    func deActiveIndicator() {
//        stopAnimating()
//    }
    
    internal func isHiddenNavigation(hide: Bool)
    {
        navigationController?.navigationBar.isHidden = hide
    }
    internal func isTransparent(trans: Bool)
    {
        if (trans == true)
        {
            self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
            self.navigationController?.navigationBar.shadowImage = UIImage()
            self.navigationController?.navigationBar.isTranslucent = true
            self.navigationController?.view.backgroundColor = UIColor.clear
        }
    }
    internal func addbackground(imgName:String)
    {
        let img_background = UIImageView(image: UIImage(named: imgName))
        self.view.addSubview(img_background)
        //constraints
        img_background.translatesAutoresizingMaskIntoConstraints = false
        let leading = NSLayoutConstraint(item: img_background, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 0)
        let trailing = NSLayoutConstraint(item: img_background, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 0)
        let top = NSLayoutConstraint(item: img_background, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 0)
        let bottom = NSLayoutConstraint(item: img_background, attribute: .bottom, relatedBy: .equal, toItem: self.view, attribute: .bottom, multiplier: 1.0, constant: 0)
        NSLayoutConstraint.activate([leading,trailing,top,bottom])
        
    }
    
}
