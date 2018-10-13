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
    
    var profile = Field()
    var profileArray = [String]()
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var FieldListTV: UITableView!
    @IBOutlet weak var ProfilePicture: UIImageView!
    @IBOutlet weak var NameLbl: UILabel!
    
    // MARK: - Main Functions
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        ProfilePicture.layer.cornerRadius = 60
        ProfilePicture.layer.masksToBounds = true
        
        self.title = profile.profileName
        self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        NameLbl.text = "\(profile.firstName) \(profile.lastName)"
        
        makeArray()
        
        FieldListTV.delegate = self
        FieldListTV.dataSource = self
    }
    
    func makeArray()
    {
        if profile.company != ""
        {
            profileArray.append(profile.company)
        }
        if profile.phone != ""
        {
            profileArray.append(profile.phone)
        }
        if profile.email != ""
        {
            profileArray.append(profile.email)
        }
        if profile.website != ""
        {
            profileArray.append(profile.website)
        }
        if profile.address != ""
        {
            profileArray.append(profile.address)
        }
        if profile.birthday != ""
        {
            profileArray.append(profile.birthday)
        }
    }
    
    // MARK: - TableView Functions
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return profileArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! ValueCell
        
        cell.NameLbl.text! = profileArray[indexPath.row]
        
        return cell
    }

}
