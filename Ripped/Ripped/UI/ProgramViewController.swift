//
//  ProgramViewController.swift
//  Ripped
//
//  Created by Bartlomiej Hyzy on 12/29/16.
//  Copyright © 2016 Bartlomiej Hyzy. All rights reserved.
//

import UIKit

class ProgramViewController: UITableViewController {
    
    var program: Program!
    
    // MARK: - View lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = program.name
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return program.weeks.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WeekCell", for: indexPath)

        let week = program.weeks[indexPath.row]
        cell.textLabel?.text = week.cellTitle

        return cell
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let weekVC = segue.destination as? WeekViewController {
            if let selectedIndexPath = tableView.indexPathForSelectedRow {
                weekVC.week = program.weeks[selectedIndexPath.row]
            }
        }
    }

}
