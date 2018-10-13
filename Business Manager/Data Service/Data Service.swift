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
    
    private var mainProfile: Field? {
        get
        {
            return defaults.object(forKey: "mainProfiles") as! Field?
        }
        set
        {
            defaults.set(newValue, forKey: "mainProfiles")
        }
    }
    
    private var profiles: [Field]?
    {
        get
        {
            return defaults.array(forKey: "profiles") as! [Field]?
        }
        set
        {
            defaults.set(newValue, forKey: "profiles")
        }
    }
    
    func getProfiles() -> [Field] {
        if profiles == nil {
            return []
        } else {
            return profiles!
        }
    }
    
    func createMainProfile(profile: Field) {
        mainProfile = profile
    }
}
