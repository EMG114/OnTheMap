//
//  UdacityClient.swift
//  OnTheMap
//
//  Created by Erica on 1/29/18.
//  Copyright © 2018 Erica. All rights reserved.
//

import Foundation


// MARK: - TMDBClient: NSObject

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
    

    


    
    // MARK: Shared Instance

class func sharedInstance() -> UdacityClient {
        struct Singleton {
            static var sharedInstance = UdacityClient()
        }
        return Singleton.sharedInstance
    }


}
