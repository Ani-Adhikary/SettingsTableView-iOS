//
//  LoginViewController.swift
//  StarterAppUsingXIB
//
//  Created by Ani Adhikary on 09/02/19.
//  Copyright © 2019 TheTechStory. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //1
        navigationController?.isNavigationBarHidden = true
        navigationItem.title = "Login"
        // Do any additional setup after loading the view.
    }
    
    //Hiding the nav bar when popped from HomeVC
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }

    @IBAction func loginButtonClicked(_ sender: UIButton) {
        navigationController?.pushViewController(HomeViewController(), animated: true)
    }

}
