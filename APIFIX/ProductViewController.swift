//
//  ProductViewController.swift
//  APIFIX
//
//  Created by Harsh Bindra on 2016-09-17.
//  Copyright © 2016 Harsh Bindra. All rights reserved.
//

import UIKit

var macbookSelected = false;
var ipadSelected = false;
var ipodNanoSelected = false;
var priceOfProduct = 7;

class ProductViewController: UIViewController {
    @IBAction func goBack(sender: AnyObject) {
        self.performSegueWithIdentifier("backToCountry", sender: self)
    }
    
    @IBAction func selectIPod(sender: AnyObject) {
        self.performSegueWithIdentifier("showCurrency", sender: self)
        ipodNanoSelected = true;
        priceOfProduct = 250;
    }
    @IBAction func selectIPad(sender: AnyObject) {
        self.performSegueWithIdentifier("showCurrency", sender: self)
        ipadSelected = true;
        priceOfProduct = 500;
    }
    @IBAction func selectMacbook(sender: AnyObject) {
        
        self.performSegueWithIdentifier("showCurrency", sender: self)
        macbookSelected = true;
        priceOfProduct = 1600;
        
    }

}
