//
//  UdacityClient.swift
//  OnTheMap
//
//  Created by Erica on 1/29/18.
//  Copyright © 2018 Erica. All rights reserved.
//

import Foundation


// MARK: - UdacityClient: NSObject

class UdacityClient : NSObject {
    
    // MARK: Properties
    
    // shared session
    var session = URLSession.shared
    
    
    // authentication state
    var requestToken: String? = nil
    var sessionID: String? = nil
    var userID: Int? = nil
    
    // MARK: Initializers
    
    override init() {
        super.init()
    }
    

    // MARK: GET
    
    //func taskForGETMethod(method: String, parameters: [String: AnyObject], completionHandlerForGET: (result: AnyObject!, error: NSError?) -> Void) -> NSURLSessionDataTask {

    // MARK: POST
    
    //func taskForPOSTMethod(method: String, parameters: [String: AnyObject], jsonBody: [String: AnyObject], completionHandlerForPOST: (result: AnyObject!, error: NSError?) -> Void) -> NSURLSessionDataTask {
    

    
    // MARK: Shared Instance

class func sharedInstance() -> UdacityClient {
        struct Singleton {
            static var sharedInstance = UdacityClient()
        }
        return Singleton.sharedInstance
    }


}
