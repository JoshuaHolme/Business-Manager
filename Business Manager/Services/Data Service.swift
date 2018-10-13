//
//  Data Service.swift
//  Business Manager
//
//  Created by Sam DuBois on 10/13/18.
//  Copyright © 2018 Joshua Holme. All rights reserved.
//

import Foundation

class DataServices {
    
    static let instance = DataServices()
    
    let defaults = UserDefaults.standard
    
    private(set) var masterProfile: [String]?
    {
        get
        {
            return defaults.array(forKey: Constants.instance.MASTER) as? [String]
        }
        set
        {
            defaults.set(newValue, forKey: Constants.instance.MASTER)
        }
    }
    // NSUSerDefaults used to save the data of all custom profiles in the application
    
    private(set) var userProfiles: [[Bool]]?
    {
        get
        {
            return defaults.array(forKey: Constants.instance.PUBLIC) as? [[Bool]]
        }
        set
        {
            defaults.set(newValue, forKey: Constants.instance.PUBLIC)
        }
    }
    
    
    
}
