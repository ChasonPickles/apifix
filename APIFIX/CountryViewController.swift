//
//  CountryViewController.swift
//  APIFIX
//
//  Created by Harsh Bindra on 2016-09-17.
//  Copyright © 2016 Harsh Bindra. All rights reserved.
//
import UIKit

var ResidesInCanada = false;
var ResidesInUSA = false;

class CountryViewController: UIViewController {
    @IBAction func selectUSA(sender: AnyObject) {
        self.performSegueWithIdentifier("showProducts", sender: self)
        ResidesInUSA = true;
    }
    
    @IBAction func selectCanada(sender: AnyObject) {
        self.performSegueWithIdentifier("showProducts", sender: self)
        ResidesInCanada = true;
    }
    
    

}
