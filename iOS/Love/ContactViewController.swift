//
//  ContactViewController.swift
//  Love
//
//  Created by chaihua on 4/18/15.
//  Copyright (c) 2015 love. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    let CellIdentifier = "love.com.ContactCell", HeaderViewIdentifier = "love.com.TableViewHeaderView"

    let contacts = [("Fevorate", ["天聪", "地笨"]),("Recent", ["地笨", "Cherry", "San Francisco", "Columbus", "Austin", "Memphis", "Baltimore", "Charlotte", "Fort Worth", "San Francisco", "Columbus", "Austin", "Memphis", "Baltimore", "Charlotte", "Fort Worth", "小美"])]
    
    var checked: [Bool]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checked = [Bool](count: contacts.count, repeatedValue: false)
        tableView.rowHeight = 40
        tableView.dataSource = self
        tableView.delegate = self
        //tableView.registerClass(ContactCell.self, forCellReuseIdentifier: CellIdentifier)
        tableView.registerClass(UITableViewHeaderFooterView.self, forHeaderFooterViewReuseIdentifier: HeaderViewIdentifier)
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let contactCell = tableView.dequeueReusableCellWithIdentifier(CellIdentifier, forIndexPath: indexPath) as! ContactCell
        let nameInSection = contacts[indexPath.section].1
        contactCell.nameLabel.text = nameInSection[indexPath.row]
        return contactCell
    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterViewWithIdentifier(HeaderViewIdentifier) as! UITableViewHeaderFooterView
        header.textLabel.text = contacts[section].0
        return header
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return contacts.count
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts[section].1.count
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
}
