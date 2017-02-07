//
//  ProgramListViewController.swift
//  Ripped
//
//  Created by Bartlomiej Hyzy on 12/29/16.
//  Copyright © 2016 Bartlomiej Hyzy. All rights reserved.
//

import UIKit

class ProgramListViewController: TableViewController {
    
    // MARK: - Properties
    
    var viewModel: ProgramListViewModel!
    
    // MARK: - Overriden
    
    override var tableViewModel: TableViewModel! {
        return viewModel
    }
    
    override func reusableCellIdentifier() -> String {
        return "ProgramCell"
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let programVC = segue.destination as? ProgramViewController {
            if let selectedIndexPath = tableView.indexPathForSelectedRow {
                programVC.viewModel = ProgramViewModel(program: viewModel.program(atRow: selectedIndexPath.row))
            }
        }
    }
 
}
