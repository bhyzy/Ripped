//
//  DayViewController.swift
//  Ripped
//
//  Created by Bartlomiej Hyzy on 12/29/16.
//  Copyright © 2016 Bartlomiej Hyzy. All rights reserved.
//

import UIKit

class DayViewController: TableViewController {
    
    // MARK: - Properties
    
    var viewModel: DayViewModel!
    
    // MARK: - View Controller Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 286
    }
    
    // MARK: - Overriden
    
    override var tableViewModel: TableViewModel! {
        return viewModel
    }
    
    override func reusableCellIdentifier() -> String {
        return "ExerciseCell"
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellSetup = viewModel.exerciseCellSetup(forRow: indexPath.row)
        
        var resultViews = [resultView(withSetup: cellSetup.todayResults)]
        if let lastResultsSetup = cellSetup.lastResults {
            resultViews.insert(resultView(withSetup: lastResultsSetup), at: 0)
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: reusableCellIdentifier(), for: indexPath) as! ExerciseTableViewCell
        cell.configure(withName: cellSetup.name, goal: cellSetup.goal, resultsViews: resultViews)
    
        return cell
    }
    
    // MARK: - Private
    
    private func resultView(withSetup setup: DayViewModel.ExerciseResultsViewSetup) -> ExerciseResultsView {
        let resultsView = ExerciseResultsView.create()
        resultsView.configure(withTitle: setup.title, results: setup.results, comment: setup.comment)
        return resultsView
    }

}
