//
//  SelectAvatarTableViewCell.swift
//  CitiesTableViewWithImages
//
//  Created by Ani Adhikary on 28/02/19.
//  Copyright © 2019 TheTechStory. All rights reserved.
//

import UIKit

class SelectAvatarTableViewCell: UITableViewCell {
    
    @IBOutlet weak var selectAvatarButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    static var nib: UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    static var identifier: String {
        return String(describing: self)
    }
    
}
