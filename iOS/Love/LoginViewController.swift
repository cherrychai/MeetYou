//
//  LoginViewController.swift
//  Love
//
//  Created by chaihua on 15/5/21.
//  Copyright (c) 2015年 love. All rights reserved.
//

import UIKit

class LoginViewController : UIViewController{
    
    
    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var pwdField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    @IBAction func loginButtonTouchDownAction(sender: AnyObject) {
    }
    
    override func viewDidLoad() {
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "textFieldChange", name: UITextFieldTextDidBeginEditingNotification, object: self.nameField)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "textFieldChange", name: UITextFieldTextDidBeginEditingNotification, object: self.pwdField)
    }
    
    @objc func textFieldChange() {
        if (!self.nameField.text.isEmpty && !self.pwdField.text.isEmpty) {
            self.loginButton.enabled = true;
            self.loginButton.backgroundColor = UIColor.redColor();
        } else {
            self.loginButton.enabled = false;
        }
        
    }
}