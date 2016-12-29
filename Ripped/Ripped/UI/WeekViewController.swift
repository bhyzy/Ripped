//
//  WeekViewController.swift
//  Ripped
//
//  Created by Bartlomiej Hyzy on 12/29/16.
//  Copyright © 2016 Bartlomiej Hyzy. All rights reserved.
//

import UIKit

class WeekViewController: UITableViewController {
    
    var week: Week!
    
    // MARK: - View lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        title = week.name
    }
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return week.days.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DayCell", for: indexPath)

        let day = week.days[indexPath.row]
        cell.textLabel?.text = day.cellTitle
        cell.detailTextLabel?.text = day.targetParts
        cell.detailTextLabel?.textColor = UIColor.init(colorLiteralRed: 143/255.0, green: 142/255.0, blue: 148/255.0, alpha: 255/255.0)
        
        return cell
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dayVC = segue.destination as? DayViewController {
            if let selectedIndexPath = tableView.indexPathForSelectedRow {
                dayVC.day = week.days[selectedIndexPath.row]
            }
        }
    }
    
}
