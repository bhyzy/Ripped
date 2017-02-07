//
//  ProgramViewController.swift
//  Ripped
//
//  Created by Bartlomiej Hyzy on 12/29/16.
//  Copyright © 2016 Bartlomiej Hyzy. All rights reserved.
//

import UIKit

class ProgramViewController: TableViewController {
    
    // MARK: - Properties
    
    var viewModel: ProgramViewModel!

    // MARK: - Overriden
    
    override var tableViewModel: TableViewModel! {
        return viewModel
    }
    
    override func reusableCellIdentifier() -> String {
        return "WeekCell"
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let weekVC = segue.destination as? WeekViewController {
            if let selectedIndexPath = tableView.indexPathForSelectedRow {
                weekVC.viewModel = WeekViewModel(week: viewModel.week(atRow: selectedIndexPath.row))
            }
        }
    }

}
