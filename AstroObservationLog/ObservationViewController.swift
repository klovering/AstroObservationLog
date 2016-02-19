//
//  ObservationViewController.swift
//  AstroObservationLog
//
//  Created by Kimberly Lovering on 2/18/16.
//  Copyright © 2016 Lovering. All rights reserved.
//

import UIKit

class ObservationViewController: UIViewController {
    
    @IBOutlet weak var observationNameLabel: UILabel!
    
    var observation: Observation?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print (observation)
        
        if let o = observation {
            observationNameLabel.text = "test"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
