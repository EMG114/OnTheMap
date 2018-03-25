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

class LoginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//apiTest()
    //  gettingAStudentLocation()
       // postAStudentLocation()
   // putAStudentLocation()
       
}
    
//    func apiTest(){
//
//        let urlString = "https://parse.udacity.com/parse/classes/StudentLocation?limit=100"
//        let url = URL(string: urlString)
//        var request = URLRequest(url: url!)
//        request.httpMethod = "GET"
//       request.addValue("QrX47CA9cyuGewLdsL7o5Eb8iug6Em8ye0dnAbIr", forHTTPHeaderField: "X-Parse-Application-Id")
//        request.addValue("QuWThTdiRmTux3YaDseUSEpUKo7aBYM737yKd4gY", forHTTPHeaderField: "X-Parse-REST-API-Key")
//        let session = URLSession.shared
//        let task = session.dataTask(with: request) { (data, response, error) in
//
//
//           // let parseJson = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
//
//            print(String(data: data!, encoding: .utf8)!)
//        }
//        task.resume()
//    }
    
    func gettingAStudentLocation() {
        let urlString = "https://parse.udacity.com/parse/classes/StudentLocation"
        let url = URL(string: urlString)
        var request = URLRequest(url: url!)
        request.addValue("QrX47CA9cyuGewLdsL7o5Eb8iug6Em8ye0dnAbIr", forHTTPHeaderField: "X-Parse-Application-Id")
        request.addValue("QuWThTdiRmTux3YaDseUSEpUKo7aBYM737yKd4gY", forHTTPHeaderField: "X-Parse-REST-API-Key")
        let session = URLSession.shared
        let task = session.dataTask(with: request) { data, response, error in
            if error != nil { // Handle error
                return
            }
            print(String(data: data!, encoding: .utf8)!)
        }
        task.resume()
    }
    
    
    func postAStudentLocation() {
        var request = URLRequest(url: URL(string: "https://parse.udacity.com/parse/classes/StudentLocation")!)
        request.httpMethod = "POST"
        request.addValue("QrX47CA9cyuGewLdsL7o5Eb8iug6Em8ye0dnAbIr", forHTTPHeaderField: "X-Parse-Application-Id")
        request.addValue("QuWThTdiRmTux3YaDseUSEpUKo7aBYM737yKd4gY", forHTTPHeaderField: "X-Parse-REST-API-Key")
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = "{\"uniqueKey\": \"1234\", \"firstName\": \"John\", \"lastName\": \"Doe\",\"mapString\": \"Mountain View, CA\", \"mediaURL\": \"https://udacity.com\",\"latitude\": 37.386052, \"longitude\": -122.083851}".data(using: .utf8)
        let session = URLSession.shared
        let task = session.dataTask(with: request) { data, response, error in
            if error != nil { // Handle error…
                return
            }
            print(String(data: data!, encoding: .utf8)!)
            
        }
        
        task.resume()
    }
    
   
    
    func api() {
        
    }
    func putAStudentLocation() {
        let urlString = "https://parse.udacity.com/parse/classes/StudentLocation/DbYpQMR5FG"
        let url = URL(string: urlString)
        var request = URLRequest(url: url!)
        request.httpMethod = "PUT"
        request.addValue("QrX47CA9cyuGewLdsL7o5Eb8iug6Em8ye0dnAbIr", forHTTPHeaderField: "X-Parse-Application-Id")
        request.addValue("QuWThTdiRmTux3YaDseUSEpUKo7aBYM737yKd4gY", forHTTPHeaderField: "X-Parse-REST-API-Key")
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = "{\"uniqueKey\": \"1234\", \"firstName\": \"John\", \"lastName\": \"Doe\",\"mapString\": \"Cupertino, CA\", \"mediaURL\": \"https://udacity.com\",\"latitude\": 37.322998, \"longitude\": -122.032182}".data(using: .utf8)
        let session = URLSession.shared
        let task = session.dataTask(with: request) { data, response, error in
            if error != nil { // Handle error…
                return
            }
            print(String(data: data!, encoding: .utf8)!)
        }
        task.resume()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        emailTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
        
        if (textField === emailTextField) {
            passwordTextField.becomeFirstResponder()
        } else if (textField === passwordTextField) {
            loginBUttonPressed(self)
        }
        return true
    }
    
    func resignIfFirstResponder(_ textField: UITextField) {
        if textField.isFirstResponder {
            textField.resignFirstResponder()
        }
    }
    
    @IBAction func userDidTapView(_ sender: AnyObject) {
        resignIfFirstResponder(emailTextField)
        resignIfFirstResponder(passwordTextField)
       
    }
    
    
    @IBAction func loginBUttonPressed(_ sender: Any) {
        if emailTextField.text?.isEmpty == false || passwordTextField.text?.isEmpty == false {
            var request = URLRequest(url: URL(string: "https://www.udacity.com/api/session")!)
            request.httpMethod = "POST"
            request.addValue("application/json", forHTTPHeaderField: "Accept")
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            request.httpBody = "{\"udacity\": {\"username\": \".com\", \"password\": \"pass\"}}".data(using: .utf8)
             //   "{\"udacity\": {\"username\": \'\(String(describing: emailTextField.text ?? nil))\'), \"password\": \'\(String(describing: passwordTextField.text ?? nil))\')}}".data(using: .utf8)
            let session = URLSession.shared
            let task = session.dataTask(with: request) { data, response, error in
                if error != nil { // Handle error…
                    return
                }
//                do {
//                    let json = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions()) as! NSString
//                    let range = Range(5..<data!.count)
//                    let newData = data?.subdata(in: range) /* subset response data! */
//                    print(String(data: newData!, encoding: .utf8)!)
//                    //print(json)
//                }catch {
//                    print(error.localizedDescription)
//                }
                let range = Range(5..<data!.count)
                let newData = data?.subdata(in: range) /* subset response data! */
                print(String(data: newData!, encoding: .utf8)!)
                
            }
            task.resume()
        }
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let tabBar = storyboard.instantiateViewController(withIdentifier: "tabBar")
//        self.present(tabBar, animated: true, completion: nil)
        self.putAStudentLocation()
    }
    
    @IBAction func SignUpButtonPressed(_ sender: Any) {
        
        if let url = URL(string: "https://www.udacity.com/account/auth#!/signup") {
            UIApplication.shared.open(url)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        subscribeToKeyboardNotifications()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        super.viewWillDisappear(animated)
        unsubscribeFromKeyboardNotifications()
    }
    
    @objc func keyboardWillShow(_ notification:Notification) {
        
        view.frame.origin.y = 0 - getKeyboardHeight(notification)
    }
    
    @objc func keyboardWillHide(_ notification:Notification) {
        view.frame.origin.y = 0
    }
    
    func getKeyboardHeight(_ notification:Notification) -> CGFloat {
        
        let userInfo = notification.userInfo
        let keyboardSize = userInfo![UIKeyboardFrameEndUserInfoKey] as! NSValue // of CGRect
        return keyboardSize.cgRectValue.height
    }
    
    func subscribeToKeyboardNotifications() {
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: .UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: .UIKeyboardWillHide, object: nil)
    }
    
    func unsubscribeFromKeyboardNotifications() {
        
        NotificationCenter.default.removeObserver(self, name: .UIKeyboardWillShow, object: nil)
        NotificationCenter.default.removeObserver(self, name: .UIKeyboardWillHide, object: nil)
    }
    
}

    



