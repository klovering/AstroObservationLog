//
//  LogTableViewController.swift
//  AstroObservationLog
//
//  Created by Kimberly Lovering on 2/18/16.
//  Copyright © 2016 Lovering. All rights reserved.
//

import UIKit

class LogTableViewController: UITableViewController {
    
    var observationsInList: [Observation]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // only runs once 
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        var entries: [Entry]?
        
                let entry1 = Entry()
                let entry2 = Entry()
                let entry3 = Entry()
                let entry4 = Entry()
        
                entry1.object = "Sirius"
                entry1.date = "02/15/2016"
                entry1.power = "25x"
                entry1.seeing = "Level 4 - Excellent"
                entry1.instrument = "Celstron 925 GPS XLT SCT"
                entry1.notes = "Great clarity; Little noise in the air."
        
                entry2.object = "Jupiter"
                entry2.date = "02/15/2016"
                entry2.power = "25x"
                entry2.seeing = "Level 2 - Poor"
                entry2.instrument = "Celstron 925 GPS XLT SCT"
                entry2.notes = "Down near the horizon. Lots of air turbulance. 3 moons visable"
        
                entry3.object = "M42 - Orion Nebula"
                entry3.date = "02/15/2016"
                entry3.power = "25x"
                entry3.seeing = "Level 3 - Good"
                entry3.instrument = "Celstron 925 GPS XLT SCT"
                entry3.notes = "Could see nebula clouds. BIG hit with Henry. Got 45 shots at 3secs each."
        
                entry4.object = "Jupiter"
                entry4.date = "02/15/2016"
                entry4.power = "10x42"
                entry4.seeing = "Level 3 - Good"
                entry4.instrument = "Binoculars"
                entry4.notes = "Could see three moons clearly"
        
                entries = [entry1, entry2, entry3, entry4]
        
        
            let observation = Observation()
            observation.entry = entry2
        
            observationsInList = [observation]
        
        print(observation)
        print(observationsInList)
        
    }




    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return observationsInList?.count ?? 0
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("LogCell", forIndexPath: indexPath)

        let observation = observationsInList?[indexPath.row]
        
        if let observation = observation {
            cell.textLabel?.text = observation.entry?.object
            cell.detailTextLabel?.text = observation.entry?.date
        }
        
        return cell
    }
    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            observationsInList?.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?){
        if segue.identifier == "Show Product" {
            let observationVC = segue.destinationViewController as? ObservationViewController
            
            guard let cell = sender as? UITableViewCell,
                let indexPath = tableView.indexPathForCell(cell) else {
                    return
            }
            
            observationVC?.observation = observationsInList?[indexPath.row]
        }
    }
    
}
