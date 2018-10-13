//
//  NewProfileCell.swift
//  Business Manager
//
//  Created by Sam DuBois on 10/13/18.
//  Copyright © 2018 Joshua Holme. All rights reserved.
//

import UIKit

class NewProfileCell: UITableViewCell {

    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var profileView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        profileView.layer.cornerRadius = profileView.frame.height / 4
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
