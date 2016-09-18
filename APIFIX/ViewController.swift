//
//  ViewController.swift
//  APIFIX
//
//  Created by Harsh Bindra on 2016-09-17.
//  Copyright © 2016 Harsh Bindra. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController{
 

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        LocationManager.sharedInstance.initLocation()
       TaxManager.sharedInstance.taxCalc("V5K0A1", country: "CA", city: "Vancouver")
       
    }
  
    
}


