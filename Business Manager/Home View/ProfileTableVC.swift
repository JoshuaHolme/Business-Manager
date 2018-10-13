//
//  ProfileTableVC.swift
//  Business Manager
//
//  Created by Joshua Holme on 10/13/18.
//  Copyright © 2018 Joshua Holme. All rights reserved.
//

import UIKit

class ProfileTableVC: UITableViewController
{
    
    let profiles = DataService.instance.getProfiles()
    var selectedProfile = Field(profileName: "", firstName: "", lastName: "", company: "", phone: "", email: "", website: "", address: "", birthday: "", profileImage: UIImage(named: "") ?? UIImage(named: "Default Picture")!)
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.tableView.rowHeight = UITableView.automaticDimension
        self.tableView.estimatedRowHeight = 135
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return profiles.count

    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        //let cell = ValueCell()
        let cell = tableView.dequeueReusableCell(withIdentifier: "profileCell") as! ProfileCell
        
        let field: Field
        
        field = profiles[indexPath.row]
        
        cell.profileName.text! = field.profileName
        cell.profileImage.image = field.profileImage
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        selectedProfile = profiles[indexPath.row]
        self.performSegue(withIdentifier: "profileDetail", sender: self)
    }
    
    // MARK: - Segues
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let vc = segue.destination as? ProfileVC
        
        vc?.profile = selectedProfile

    }

}
