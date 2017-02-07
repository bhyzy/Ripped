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
        let cell = tableView.dequeueReusableCell(withIdentifier: reusableCellIdentifier(), for: indexPath) as! ExerciseTableViewCell

        let cellSetup = viewModel.exerciseCellSetup(forRow: indexPath.row)
        cell.nameLabel.text = cellSetup.name
        cell.goalLabel.text = cellSetup.goal
        
        let lastResultsView = Bundle.main.loadNibNamed("ExerciseResultsView", owner: self, options: nil)?.first as! ExerciseResultsView
        lastResultsView.titleLabel.text = "Last Time"
        lastResultsView.commentLabel.text = "Some comment"
        
        let todayResultsView = Bundle.main.loadNibNamed("ExerciseResultsView", owner: self, options: nil)?.first as! ExerciseResultsView
        todayResultsView.titleLabel.text = "Today"
        todayResultsView.commentLabel.text = "Add comment..."
        
        cell.resultsStackView.addArrangedSubview(lastResultsView)
        cell.resultsStackView.addArrangedSubview(todayResultsView)

        return cell
    }
    
}
