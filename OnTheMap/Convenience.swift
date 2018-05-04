//
//  Convenience.swift
//  OnTheMap
//
//  Created by Erica on 2/3/18.
//  Copyright © 2018 Erica. All rights reserved.
//

import Foundation
import UIKit

extension UdacityClient {
    
    func authenticateWithViewController(_ hostViewController: UIViewController, completionHandlerForAuth: @escaping (_ success: Bool, _ errorString: String?) -> Void) {
        
        // chain completion handlers for each request so that they run one after the other
        postSession(username: username, password: password) { (success, results) in
            
            
            if success {
                
            
                print(sessionID)
                self.sessionID = UdacityClient.JSONResponseKeys.SessionID
                self.userID = UdacityClient.JSONResponseKeys.UserID
                completionHandlerForAuth(success, errorString)
                            } else {
                                completionHandlerForAuth(success, errorString)
                            }
            
        }
        
    }
    
}
    
    private func postSession(username:String, password:String,completionHandlerForSession:@escaping(_ success: Bool, _ result: AnyObject?) -> () ){
        
        /* 1. Specify parameters, method (if has {key}), and HTTP body (if POST) */
        /* 2. Make the request */
     let body =  ["udacity":["username":emailTextField.text,"password":passwordTextField.text]]
        let _ = taskForPOSTMethod(method: UdacityClient.Methods.AccountSession,jsonBody: body) { (results, error) in
            /* 3. Send the desired value(s) to completion handler */
            if let error = error {
                print(error)
                completionHandlerForSession(false, nil, "Login Failed (Session ID).")
            } else {
              
            guard let userId = results?[UdacityClient.JSONResponseKeys.UserID] as? String, let sessionID = results?[UdacityClient.JSONResponseKeys.SessionID] as? String else {
                    print("Could not initiate session")
                    completionHandlerForSession(true, result, nil)
                }
             
        }
}
}
        
//        request.httpMethod = "POST"
//        request.addValue("application/json", forHTTPHeaderField: "Accept")
//        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
//
//        let jsonData = try? JSONSerialization.data(withJSONObject: body )
//
//        request.httpBody = jsonData
        
        /* 3. Send the desired value(s) to completion handler */
        
        /*
         
         let _ = taskForGETMethod(method, parameters: parameters) { (results, error) in
         
         }
         
         */
    


