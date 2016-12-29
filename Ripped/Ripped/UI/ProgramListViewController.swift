//
//  ProgramListViewController.swift
//  Ripped
//
//  Created by Bartlomiej Hyzy on 12/29/16.
//  Copyright © 2016 Bartlomiej Hyzy. All rights reserved.
//

import UIKit

class ProgramListViewController: UITableViewController {
    
    var dataProvider: DataProviding!

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataProvider.programs.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProgramCell", for: indexPath)
        
        let program = dataProvider.programs[indexPath.row]
        cell.textLabel?.text = program.name + (program.completed ? " ✓" : "")
        
        return cell
    }
 
}
