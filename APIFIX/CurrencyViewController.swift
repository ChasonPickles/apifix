//
//  CurrencyViewController.swift
//  APIFIX
//
//  Created by Harsh Bindra on 2016-09-17.
//  Copyright © 2016 Harsh Bindra. All rights reserved.
//
import UIKit

var currencySelectedCAD = false;
var currencySelectedUSD = false;
var currencySelectedCAU = false;

class CurrencyViewController: UIViewController {
    @IBAction func goBack(sender: AnyObject) {
        self.performSegueWithIdentifier("backToProduct", sender: self)
    }
    @IBAction func selectCurrencyCAU(sender: AnyObject) {
        self.performSegueWithIdentifier("showResults", sender: self)
        currencySelectedCAU = true;
    }
    
    @IBAction func selectCurrencyUS(sender: AnyObject) {
        self.performSegueWithIdentifier("showResults", sender: self)
        currencySelectedUSD = true;
    }
    
    @IBAction func selectCurrencyCAD(sender: AnyObject) {
        self.performSegueWithIdentifier("showResults", sender: self)
            currencySelectedCAD = true;
    }

}
