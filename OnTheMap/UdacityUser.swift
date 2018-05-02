//
//  UdacityUser.swift
//  OnTheMap
//
//  Created by Erica on 5/2/18.
//  Copyright © 2018 Erica. All rights reserved.
//

import Foundation


struct UdacityUser {
    
    var id: String = ""
    var firstName: String = ""
    var lastName: String = ""
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    
    init(dictionary: [String : AnyObject]) {
        id = dictionary["id"] as! String
        firstName = dictionary["firstName"] as! String
        lastName = dictionary["lastName"] as! String
    }
}
