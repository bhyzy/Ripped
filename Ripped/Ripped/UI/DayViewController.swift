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
    
    // MARK: - Overriden
    
    override var tableViewModel: TableViewModel! {
        return viewModel
    }
    
    override func reusableCellIdentifier() -> String {
        return "ExerciseCell"
    }

//    // MARK: - Table view data source
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return day.exercises.count
//    }
//
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "ExerciseCell", for: indexPath) as! ExerciseTableViewCell
//
//        let exercise = day.exercises[indexPath.row]
//        cell.nameLabel.text = exercise.name
//        cell.goalLabel.text = exercise.goal
//        
//        let lastResultsView = Bundle.main.loadNibNamed("ExerciseResultsView", owner: self, options: nil)?.first as! ExerciseResultsView
//        lastResultsView.titleLabel.text = "Last Time"
//        lastResultsView.commentLabel.text = "Some comment"
//        
//        let todayResultsView = Bundle.main.loadNibNamed("ExerciseResultsView", owner: self, options: nil)?.first as! ExerciseResultsView
//        todayResultsView.titleLabel.text = "Today"
//        todayResultsView.commentLabel.text = "Add comment..."
//        
//        cell.resultsStackView.addSubview(lastResultsView)
//        cell.resultsStackView.addSubview(todayResultsView)
//
//        return cell
//    }
    
}
