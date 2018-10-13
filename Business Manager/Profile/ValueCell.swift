//
//  ValueCell.swift
//  Business Manager
//
//  Created by Joshua Holme on 10/13/18.
//  Copyright © 2018 Joshua Holme. All rights reserved.
//

import UIKit

class ValueCell: UITableViewCell
{
    // MARK: - IBOutlets
    @IBOutlet weak var NameLbl: UILabel!
    @IBOutlet weak var ValueLbl: UILabel!
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
