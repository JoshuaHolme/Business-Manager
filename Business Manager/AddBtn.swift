//
//  AddBtn.swift
//  Business Manager
//
//  Created by Joshua Holme on 10/13/18.
//  Copyright © 2018 Joshua Holme. All rights reserved.
//

import UIKit

@IBDesignable

class RoundedButton: UIButton
{
    @IBInspectable var cornerRadius: CGFloat = 20.0
        {
        didSet
        {
            self.layer.cornerRadius = self.layer.frame.size.height / 4
        }
    }
    
        //    Prepare for build
        override func awakeFromNib()
        {
        self.setupView()
        }
    
        override func prepareForInterfaceBuilder()
        {
        super.prepareForInterfaceBuilder()
        self.setupView()
        }
    
        func setupView()
        {
        self.layer.cornerRadius = cornerRadius
        self.layer.masksToBounds = true
        }
}
