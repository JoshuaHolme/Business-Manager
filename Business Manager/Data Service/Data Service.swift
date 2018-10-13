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
    let defaults = UserDefaults.standard
    
    private(set) var mainProfile: Field? {
        get
        {
            return defaults.object(forKey: "mainProfiles") as? Field
        }
        set
        {
            defaults.set(newValue, forKey: "mainProfiles")
        }
    }
    
    private(set) var profileFirstNames: [String]!
    {
        get
        {
            return defaults.array(forKey: "profileFirstName") as? [String]
        }
        set
        {
            defaults.set(newValue, forKey: "profileFirstName")
        }
    }
    
    private(set) var profilelastNames: [String]!
    {
        get
        {
            return defaults.array(forKey: "profileLastName") as? [String]
        }
        set
        {
            defaults.set(newValue, forKey: "profileLasttName")
        }
    }
    
    private(set) var profileAdresses: [String]!
    {
        get
        {
            return defaults.array(forKey: "profileAddress") as? [String]
        }
        set
        {
            defaults.set(newValue, forKey: "profileAddress")
        }
    }
    
    private(set) var profileEmail: [String]!
    {
        get
        {
            return defaults.array(forKey: "profileEmail") as? [String]
        }
        set
        {
            defaults.set(newValue, forKey: "profileEmail")
        }
    }
    
    private(set) var profileCompany: [String]!
    {
        get
        {
            return defaults.array(forKey: "profileCompany") as? [String]
        }
        set
        {
            defaults.set(newValue, forKey: "profileCompany")
        }
    }
    
    private(set) var profilePhone: [String]!
    {
        get
        {
            return defaults.array(forKey: "profilePhone") as? [String]
        }
        set
        {
            defaults.set(newValue, forKey: "profilePhone")
        }
    }
    
    private(set) var profileBirthday: [String]!
    {
        get
        {
            return defaults.array(forKey: "profileBirthday") as? [String]
        }
        set
        {
            defaults.set(newValue, forKey: "profileBirthday")
        }
    }
    
    
    func createMainProfile(firstName: String, lastName: String, address: String)
    {
        mainProfile?.firstName = firstName
        mainProfile?.lastName = lastName
        mainProfile?.address = address
    }
    
    func addProfile(first: String, last: String, Address: String, birthday: String, phone: String, email: String, company: String) {
        profileEmail.append(email)
        profileFirstNames.append(first)
        profilelastNames.append(last)
        profilePhone.append(phone)
        profileCompany.append(company)
        profileBirthday.append(birthday)
    }
}
