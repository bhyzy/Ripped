//
//  WeekViewController.swift
//  Ripped
//
//  Created by Bartlomiej Hyzy on 12/29/16.
//  Copyright © 2016 Bartlomiej Hyzy. All rights reserved.
//

import UIKit

class WeekViewController: TableViewController {
    
    // MARK: - Properties
    
    var viewModel: WeekViewModel!
    
    // MARK: - Overriden
    
    override var tableViewModel: TableViewModel! {
        return viewModel
    }
    
    override func reusableCellIdentifier() -> String {
        return "DayCell"
    }
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = super.tableView(tableView, cellForRowAt: indexPath)
        cell.detailTextLabel?.textColor = UIColor.init(colorLiteralRed: 143/255.0, green: 142/255.0, blue: 148/255.0, alpha: 255/255.0)
        return cell
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dayVC = segue.destination as? DayViewController {
            if let selectedIndexPath = tableView.indexPathForSelectedRow {
                dayVC.viewModel = DayViewModel(day: viewModel.day(atRow: selectedIndexPath.row))
            }
        }
    }
    
}
