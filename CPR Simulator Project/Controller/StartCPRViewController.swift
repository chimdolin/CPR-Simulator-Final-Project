//
//  StartCPRViewController.swift
//  CPR Simulator Project
//
//  Created by chimdolin on 16/10/2560 BE.
//  Copyright © 2560 chimdolin. All rights reserved.
//

import UIKit

class StartCPRViewController: UIViewController {

    @IBOutlet weak var headerView: UIViewX!
    @IBOutlet var mainView: UIView!
    
    func customUI() {
        
        //custom navigation bar
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = .clear
        self.navigationController?.navigationBar.barStyle = UIBarStyle.black
        
        //set mainView
        self.mainView.setGradientBackground(colorOne: UIColor(red:0.90, green:0.91, blue:0.94, alpha:1.0), colorTwo: UIColor(red:0.93, green:0.95, blue:0.96, alpha:1.0))
        
        //set header shadow
        headerView.layer.masksToBounds = false
        headerView.layer.shadowColor = UIColor(red:0.45, green:0.45, blue:0.45, alpha:1.00).cgColor
        headerView.layer.shadowOpacity = 0.5
        headerView.layer.shadowOffset = CGSize(width: 0, height: 1)
        headerView.layer.shadowRadius = 0
        headerView.layer.shouldRasterize = true
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customUI()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
