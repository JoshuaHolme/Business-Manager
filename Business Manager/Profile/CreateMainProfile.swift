//
//  CreateMainProfile.swift
//  Business Manager
//
//  Created by Joshua Holme on 10/13/18.
//  Copyright © 2018 Joshua Holme. All rights reserved.
//

import UIKit

class CreateMainProfile: UIViewController {
    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var company: UITextField!
    @IBOutlet weak var phone: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var website: UITextField!
    @IBOutlet weak var address: UITextField!
    @IBOutlet weak var birthday: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func doneBtnPressed(_ sender: Any)
    {
        let profile: Field = Field()
                profile.firstName = firstName.text!
                profile.lastName = lastName.text!
                profile.address = address.text!
        
        DataService.instance.createMainProfile(firstName: profile.firstName, lastName: profile.lastName, address: profile.address)
                //print(DataService.instance.mainProfile)
    }
}
