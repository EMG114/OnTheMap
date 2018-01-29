//
//  LoginViewController.swift
//  OnTheMap
//
//  Created by Erica on 1/29/18.
//  Copyright © 2018 Erica. All rights reserved.
//

import UIKit
import FacebookLogin
import FacebookCore

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let loginButton = LoginButton(readPermissions: [ .publicProfile ])
    //    loginButton.frame(forAlignmentRect: CGRect(x: x, y: y, width: loginButton.frame.size.width, height: 40.0<#T##Double#>)
        loginButton.center = view.center
        
        
        view.addSubview(loginButton)
        
        
        
}
}

