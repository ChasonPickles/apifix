//
//  APIManager.swift
//  APIFIX
//
//  Created by Harsh Bindra on 2016-09-17.
//  Copyright © 2016 Harsh Bindra. All rights reserved.
//
import AFNetworking
import Alamofire
import SwiftyJSON
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
    
    
    func getAddressForLatLng(latitude: String, longitude: String) -> String {
        let baseUrl = "https://maps.googleapis.com/maps/api/geocode/json?"
        let apikey = "AIzaSyDWpcZQkPkXVuXKzNo2Z5kZyfQGemrLkqo"
        let url = NSURL(string: "\(baseUrl)latlng=\(latitude),\(longitude)&key=\(apikey)")
        let data = NSData(contentsOfURL: url!)
        let json = try! NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.AllowFragments) as! NSDictionary
        if let result = json["results"] as? NSArray {
            if let address = result[2]["address_components"] as? NSArray {
                let zipcode = address[0]["long_name"] as! String
                 return zipcode
            }
        }
        return " " 
    }
}
