//
//  UerDataSource.swift
//  Love
//
//  Created by hejianbin on 4/18/15.
//  Copyright (c) 2015 love. All rights reserved.
//

import UIKit

class UserDataSource {
    let data = ["小美", "天聪", "地笨", "Cherry", "San Francisco", "Columbus", "Austin", "Memphis", "Baltimore", "Charlotte", "Fort Worth", "小美", "天聪", "地笨", "Cherry", "San Francisco", "Columbus", "Austin", "Memphis", "Baltimore", "Charlotte", "Fort Worth"]
    
    let profile = ["个人资料", "心中的另一半"]
    
    func getContactList(user: String) -> NSArray {
        let contacts = data as NSArray
        return contacts;
    }
}
