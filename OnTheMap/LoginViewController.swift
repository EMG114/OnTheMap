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

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
}
    
    @IBAction func loginBUttonPressed(_ sender: Any) {
    }
    
    @IBAction func SignUpButtonPressed(_ sender: Any) {
    }
    
}

extension UIViewController: UITextFieldDelegate{
    
}
