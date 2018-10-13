//
//  Data Service.swift
//  Business Manager
//
//  Created by Joshua Holme on 10/13/18.
//  Copyright © 2018 Joshua Holme. All rights reserved.
//

import Foundation
import UIKit

class DataService {
    
    static let instance = DataService()
    
    private var profiles: [Field] =
    [
        Field(profileName: "Work", firstName: "Joshua", lastName: "Holme", company: "Holme Computer", phone: "774-644-4376", email: "JHolme@umassd.edu", website: "www.twitter.com/HolmeComputer", address: "", birthday: "", profileImage: UIImage(named: "") ?? UIImage(named: "Default Picture")!),
        Field(profileName: "Personal", firstName: "Josh", lastName: "Holme", company: "Holme Computer", phone: "774-644-4376", email: "JoshuaHolme19@icloud.com", website: "www.twitter.com", address: "", birthday: "", profileImage: UIImage(named: "") ?? UIImage(named: "Profile Picture")!)
    ]
    
    func getProfiles() -> [Field] {
        return profiles
    }
}
