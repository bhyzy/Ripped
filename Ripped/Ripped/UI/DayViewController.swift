//
//  DayViewController.swift
//  Ripped
//
//  Created by Bartlomiej Hyzy on 12/29/16.
//  Copyright © 2016 Bartlomiej Hyzy. All rights reserved.
//

import UIKit

class DayViewController: UITableViewController {
    
    var day: Day!
    
    // MARK: - View lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        title = day.fullName
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return day.exercises.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ExerciseCell", for: indexPath) as! ExerciseTableViewCell

        let exercise = day.exercises[indexPath.row]
        cell.nameLabel.text = exercise.name
        cell.goalLabel.text = exercise.goal

        return cell
    }
    
}
