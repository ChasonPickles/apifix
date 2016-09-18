//
//  ResultsViewController.swift
//  APIFIX
//
//  Created by Harsh Bindra on 2016-09-18.
//  Copyright © 2016 Harsh Bindra. All rights reserved.
//


import UIKit

class ResultsViewController: UIViewController {
    @IBAction func backToCurrency(sender: AnyObject) {
        self.performSegueWithIdentifier("backToCurrency", sender: self)
    }
    @IBOutlet weak var priceWithoutTaxHasCurrency: UILabel!
    @IBOutlet weak var priceWithTaxWithCurrency: UILabel!
    @IBOutlet weak var priceWithoutTax: UILabel!
    @IBOutlet weak var taxString: UILabel!
    
    @IBOutlet weak var conversionString: UILabel!
    @IBOutlet weak var buyString: UILabel!

    
    override func viewDidLoad() {
        
    }

}
