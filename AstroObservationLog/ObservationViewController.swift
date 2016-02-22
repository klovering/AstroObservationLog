//
//  ObservationViewController.swift
//  AstroObservationLog
//
//  Created by Kimberly Lovering on 2/18/16.
//  Copyright © 2016 Lovering. All rights reserved.
//

import UIKit

class ObservationViewController: UIViewController {
    
    @IBOutlet weak var objectNameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var powerLabel: UILabel!
    @IBOutlet weak var seeingLabel: UILabel!
    @IBOutlet weak var instrumentLabel: UILabel!
    @IBOutlet weak var notesLabel: UILabel!
    
    var observation: Entry?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let o = observation, let date = o.date, let power = o.power, let seeing = o.seeing, let instrument = o.instrument, let notes = o.notes else {
            return
        }
  
            objectNameLabel.text = o.object
            dateLabel.text = "Date: \(date)"
            powerLabel.text = "Power: \(power)"
            seeingLabel.text = "Seeing: \(seeing)"
            instrumentLabel.text = "Instrument: \(instrument)"
            notesLabel.text = notes
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
