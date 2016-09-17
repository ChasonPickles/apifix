//
//  APIManager.swift
//  APIFIX
//
//  Created by Harsh Bindra on 2016-09-17.
//  Copyright © 2016 Harsh Bindra. All rights reserved.
//
import AFNetworking
import Alamofire
class APIManager {
    static let sharedInstance = APIManager()    
    func xeCurrencyConvert(from: String, to: String, amount: Double) {
        
        let api2: String = "https://xecdapi.xe.com/v1/convert_to.json/"
        let params : [String: AnyObject] =
            [
                "to": from,
                "from": to,
                "amount": amount
        ]
        
        Alamofire.request(.GET, api2,parameters: params)
            .authenticate(user: "hackthenorth053", password: "Waterloo2890")
            .responseJSON { response in
                if let JSON = response.result.value {
                    print("JSON: \(JSON)")
                    let weather = JSON["from"] as! [[String : AnyObject]]
                    
                    let out = (weather[0]["mid"])
                    if let output = out?.doubleValue {
                       // print(output)
                        cost.setDouble(output, forKey: "curCost")
                    
                        }else{
                        // error
                    }
                }
        }// result of response serialization
    }
    
    


}
