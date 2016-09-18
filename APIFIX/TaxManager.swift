//
//  TaxManager.swift
//  APIFIX
//
//  Created by Harsh Bindra on 2016-09-17.
//  Copyright © 2016 Harsh Bindra. All rights reserved.
//
import Alamofire
import SwiftyJSON
class TaxManager {
     static let sharedInstance = TaxManager()
    func taxCalc(zipcode: String, country: String, city: String) {
        
        let api2: String = "https://api.taxjar.com/v2/rates/" + zipcode
        let params : [String: AnyObject] =
            [
                
                "city": city,
                "country": country
        ]
        let Auth_header    = [ "Authorization" : "Token token=e0588c53daa48c389846b6466a165bd1"]
        
        Alamofire.request(.GET, api2,headers:Auth_header,parameters: params)
            .responseJSON { response in
                if let JSON = response.result.value {
                    print("JSON: \(JSON)")
                    let weather = JSON["rate"] as! NSDictionary
                    let rate = weather["combined_rate"]
                    
                    if let rate = rate {
        
                         print(rate)
                    }
                   
                    
                    /*
                    let out = (weather[0]["mid"])
                    if let output = out?.doubleValue {
                        // print(output)
                        cost.setDouble(output, forKey: "curCost")
                        
                    }else{
                        // error
                    }*/
                }
        }// result of response serialization

        
    }
}





    

