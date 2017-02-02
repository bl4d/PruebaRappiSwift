//
//  ConnectionUtil.swift
//  TableExample
//
//

import UIKit
import Alamofire

class ConnectionUtil: NSObject {
    
    
    func executeRequest() -> String {

        Alamofire.request("https://itunes.apple.com/us/rss/topfreeapplications/limit=20/json").responseJSON { response in
            print(response.request)  // original URL request
            print(response.response) // HTTP URL response
            print(response.data)     // server data
            print(response.result)   // result of response serialization
            
            
            
            if let JSON = response.result.value {
                print("JSON: \(JSON)")
            }
        }
        
        
        
        
        return "response"
    }
    
    
    
    

}
