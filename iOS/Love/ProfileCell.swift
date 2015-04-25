//
//  ProfileCell.swift
//  Love
//
//  Created by chaihua on 4/18/15.
//  Copyright (c) 2015 love. All rights reserved.
//

import UIKit

class ProfileCell: UITableViewCell {
    
    
    @IBOutlet weak var picImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
