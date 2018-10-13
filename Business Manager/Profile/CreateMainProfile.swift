//
//  CreateMainProfile.swift
//  Business Manager
//
//  Created by Joshua Holme on 10/13/18.
//  Copyright © 2018 Joshua Holme. All rights reserved.
//

import UIKit

class CreateMainProfile: UIViewController {

    @IBOutlet weak var inputViews: UIStackView!
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
    
    @IBAction func doneButtonPressed(_ sender: Any) {
        let profile: Field = Field(profileName: "", firstName: firstName.text!, lastName: lastName.text!, company: company.text!, phone: phone.text!, email: email.text!, website: website.text!, address: address.text!, birthday: birthday.text!, profileImage: UIImage(named: "") ?? UIImage(named: "Default Picture")!)
        
        DataService.instance.createMainProfile(profile: profile)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
