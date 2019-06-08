//
//  CustomNavigationBarHeader.swift
//  Nestwalk
//
//  Created by Ani Adhikary on 08/06/19.
//  Copyright © 2019 Nestwalk. All rights reserved.
//

import UIKit

class CustomNavigationBarHeader {
    
    static func setNavBar(navController: UINavigationController, headerText: String) -> UILabel {
        navController.navigationBar.isTranslucent = false
        navController.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navController.navigationBar.shadowImage = UIImage()
        navController.navigationBar.barTintColor = UIColor.royalBlue
        navController.navigationBar.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        navController.navigationBar.isHidden = false
        
        //navigationItem.titleView = UIImageView(image: #imageLiteral(resourceName: "N3"))
        
        let navItemHeaderLabel = UILabel()
        navItemHeaderLabel.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        navItemHeaderLabel.textAlignment = .center
        navItemHeaderLabel.numberOfLines = 0
        navItemHeaderLabel.font = UIFont(name: "Avenir-medium", size: 20.0)
        navItemHeaderLabel.text = headerText
        
        return navItemHeaderLabel
    }
}
