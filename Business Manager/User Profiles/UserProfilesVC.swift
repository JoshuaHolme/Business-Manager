//
//  UserProfilesVC.swift
//  Business Manager
//
//  Created by Sam DuBois on 10/13/18.
//  Copyright © 2018 Joshua Holme. All rights reserved.
//

import UIKit

class UserProfilesVC: UIViewController, UITableViewDelegate, UITableViewDataSource
{

    @IBOutlet weak var AddBtn: UIButton!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        AddBtn.layer.cornerRadius = AddBtn.frame.size.height / 4
    }

    // MARK: - Table view data source

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        
        return 8
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "userProfileCell") as? NewProfileCell else { return UITableViewCell()}
        
        //cell.profileName.text = DataServices.instance.masterProfile![indexPath.row]
        return cell
        
    }

}
