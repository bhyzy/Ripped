//
//  TableViewController.swift
//  Ripped
//
//  Created by Bartlomiej Hyzy on 1/15/17.
//  Copyright © 2017 Bartlomiej Hyzy. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    // MARK: - Properties

    private(set) var tableViewModel: TableViewModel!
    
    // MARK: - View lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = tableViewModel.title
    }
    
    // MARK: - Internal
    
    func reusableCellIdentifier() -> String {
        preconditionFailure("Override")
    }
    
    // MARK: - UITableViewDataSource
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewModel.numberOfRows
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reusableCellIdentifier(), for: indexPath)
        
        cell.textLabel?.text = tableViewModel.textForCellAtRow(row: indexPath.row)
        cell.detailTextLabel?.text = tableViewModel.detailTextForCellAtRow(row: indexPath.row)
        
        return cell
    }

}
