//
//  ProfileVC.swift
//  Business Manager
//
//  Created by Joshua Holme on 10/13/18.
//  Copyright © 2018 Joshua Holme. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController, UITableViewDelegate, UITableViewDataSource
{

    // MARK: - Variables
    
    let information = [Field(name: "Name", value: "Joshua Holme"), Field(name: "Phone Number", value: "774-644-4376"), Field(name: "Address", value: "57 Pleasant St"), Field(name: "Personal Email", value: "JoshuaHolme19@icloud.com"), Field(name: "Work Email", value: "JHolme@umassd.edu"), Field(name: "Website", value: "https://dashboard.hackumass.com/events")]
    
    // MARK: - IB Outlets
    @IBOutlet weak var FieldListTV: UITableView!
    @IBOutlet weak var ProfilePicture: UIImageView!
    
    // MARK: - Functions
    override func viewDidLoad()
    {
        super.viewDidLoad()
        ProfilePicture.cornerrad
        FieldListTV.delegate = self
        FieldListTV.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
    // MARK: - TableView Functions
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return information.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell()
        
        let field: Field
        
        field = information[indexPath.row]
        
        cell.textLabel?.text = "\(field.name): \(field.value)"
        //cell.textLabel?.text = field.name
        
        return cell
    }

}
