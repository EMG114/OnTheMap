//
//  UdacityClient.swift
//  OnTheMap
//
//  Created by Erica on 1/29/18.
//  Copyright © 2018 Erica. All rights reserved.
//

import Foundation

//
//// MARK: - UdacityClient: NSObject
//
class UdacityClient : NSObject {
//    
//    // MARK: Properties
//    
//    var session = URLSession.shared
//    
//    var requestToken: String? = nil
//    var sessionID: String? = nil
//    var userID: Int? = nil
//    
//    // MARK: Initializers
//    
//    override init() {
//        super.init()
//    }
//    
//
//    // MARK: GET
//    
//    func taskForGETMethod(method: String, parameters: [String: AnyObject], completionHandlerForGET: (result: AnyObject!, error: NSError?) -> Void) -> NSURLSessionDataTask {
//
//    }
//        
//    // MARK: POST
//    
//    func taskForPOSTMethod(method: String, parameters: [String: AnyObject], jsonBody: [String: AnyObject], completionHandlerForPOST: (_ result: AnyObject?, _ error: NSError?) -> Void) -> URLSessionDataTask {
//    
//        
//        /* 1. Set the parameters */
//        var parametersWithApiKey = parameters
//        parametersWithApiKey[ParameterKeys.ApiKey] = Constants.ApiKey as AnyObject?
//        
//        /* 2/3. Build the URL, Configure the request */
//        let request = NSMutableURLRequest(url: tmdbURLFromParameters(parametersWithApiKey, withPathExtension: method))
//        request.httpMethod = "POST"
//        request.addValue("application/json", forHTTPHeaderField: "Accept")
//        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
//        request.httpBody = jsonBody.data(using: String.Encoding.utf8)
//        
//        /* 4. Make the request */
//        let task = session.dataTask(with: request as URLRequest) { (data, response, error) in
//            
//            func sendError(_ error: String) {
//                print(error)
//                let userInfo = [NSLocalizedDescriptionKey : error]
//                completionHandlerForPOST(nil, NSError(domain: "taskForGETMethod", code: 1, userInfo: userInfo))
//            }
//            
//            /* GUARD: Was there an error? */
//            guard (error == nil) else {
//                sendError("There was an error with your request: \(error)")
//                return
//            }
//            
//            /* GUARD: Did we get a successful 2XX response? */
//            guard let statusCode = (response as? HTTPURLResponse)?.statusCode, statusCode >= 200 && statusCode <= 299 else {
//                sendError("Your request returned a status code other than 2xx!")
//                return
//            }
//            
//            /* GUARD: Was there any data returned? */
//            guard let data = data else {
//                sendError("No data was returned by the request!")
//                return
//            }
//            
//            /* 5/6. Parse the data and use the data (happens in completion handler) */
//            self.convertDataWithCompletionHandler(data, completionHandlerForConvertData: completionHandlerForPOST)
//        }
//        
//        /* 7. Start the request */
//        task.resume()
//        
//        return task
//    }
//    
//}
//
//
//
//    // MARK: Shared Instance
//
//class func sharedInstance() -> UdacityClient {
//        struct Singleton {
//            static var sharedInstance = UdacityClient()
//        }
//        return Singleton.sharedInstance
//    }
//
//
}
