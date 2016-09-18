//
//  openingView.swift
//  APIFIX
//
//  Created by Harsh Bindra on 2016-09-18.
//  Copyright © 2016 Harsh Bindra. All rights reserved.
//

import UIKit

class openingView: UIViewController {
    @IBAction func Continue(sender: AnyObject) {
        self.performSegueWithIdentifier("showReside", sender: self)
    }
    
    override func viewDidLoad() {
        
        let seconds = 4.0
        let delay = seconds * Double(NSEC_PER_SEC)  // nanoseconds per seconds
        let dispatchTime = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
        
        dispatch_after(dispatchTime, dispatch_get_main_queue(), {
            
            // here code perfomed with delay
            self.performSegueWithIdentifier("showReside", sender: self)
            
        })


    }

}
