//
//  StudentLocation.swift
//  OnTheMap
//
//  Created by Erica on 1/29/18.
//  Copyright © 2018 Erica. All rights reserved.
//

import Foundation


//StudentLocation object in Parse

struct studentLocation {
    
    var objectId: String
    var uniqueKey: String
    var firstName: String
    var lastName: String
    var mapString: String
    var mediaURL: String
    var latitude: Double
    var longitude: Double
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    init(dictionary: [String : AnyObject]) {
        objectId = (dictionary["objectId"] as! String?)!
        uniqueKey = (dictionary["uniqueKey"] as! String?)!
        firstName = (dictionary["firstName"] as! String?)!
        lastName = (dictionary["lastName"] as! String?)!
        mapString = (dictionary["mapString"] as! String?)!
        mediaURL = (dictionary["mediaURL"] as! String?)!
        latitude = (dictionary["objectId"] as! Double?)!
        longitude = (dictionary["uniqueKey"] as! Double?)!
    }
    
    
}
