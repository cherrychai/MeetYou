//
//  HomeViewController.swift
//  Love
//
//  Created by chaihua on 4/18/15.
//  Copyright (c) 2015 love. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var profileTableView: UITableView!
    
    let profileCellIdentifier = "love.com.ProfileCell"
    let profile = ["个人资料", "心中的另一半"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //profileTableView.rowHeight = 40
        //profileTableView.dataSource = self
    }
    
    /*func tableView(profileTableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let profileCell = profileTableView.dequeueReusableCellWithIdentifier(profileCellIdentifier, forIndexPath: indexPath) as! ProfileCell
        let name = profile[indexPath.row]
        
        profileCell.nameLabel.text = name
        
        return profileCell
    }
    
    func tableView(profileTableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return profile.count
    }*/
}