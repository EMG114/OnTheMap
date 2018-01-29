//
//  StudentLocation.swift
//  OnTheMap
//
//  Created by Erica on 1/29/18.
//  Copyright © 2018 Erica. All rights reserved.
//

import Foundation

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
    
    
    
    
}
