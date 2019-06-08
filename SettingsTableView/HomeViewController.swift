//
//  HomeViewController.swift
//  StarterAppUsingXIB
//
//  Created by Ani Adhikary on 09/02/19.
//  Copyright © 2019 TheTechStory. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigationBar()
        navigationController?.isNavigationBarHidden = false
        
    }
    
    func setupNavigationBar() {
        navigationItem.hidesBackButton = true
        navigationItem.titleView = CustomNavigationBarHeader.setNavBar(navController: navigationController!, headerText: "Home")
        
        //right menu
        let rightMenuIcon = UIBarButtonItem(image: UIImage(named: "SideMenuIcon"), style: UIBarButtonItem.Style.plain, target: self, action: #selector(showMenu))
        navigationItem.rightBarButtonItem = rightMenuIcon
    }
    
    @objc func showMenu() {
        let navVC = UINavigationController(rootViewController: SettingsViewController())
        present(navVC, animated: true, completion: nil)
    }

    @IBAction func logoffButtonClicked(_ sender: UIButton) {
        //2 - This way nav bar is showing up not preferable
        navigationController?.popViewController(animated: true)
        //3 other way
        //navigationController?.pushViewController(LoginViewController(), animated: true)
    }
    
}
