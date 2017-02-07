//
//  File.swift
//  Ripped
//
//  Created by Bartlomiej Hyzy on 2/7/17.
//  Copyright © 2017 Bartlomiej Hyzy. All rights reserved.
//

import Foundation

class DayViewModel: TableViewModel {
    
    // MARK: - Properties
    
    private var day: Day
    
    // MARK: - Definitions
    
    typealias ExerciseResultsViewSetup = (title: String,
                                          results: [String],
                                          comment: String?)
    typealias ExerciseCellSetup = (name: String,
                                   goal: String,
                                   todayResults: ExerciseResultsViewSetup,
                                   lastResults: ExerciseResultsViewSetup?)
    
    // MARK: - Initialization
    
    init(day: Day) {
        self.day = day
        super.init()
    }
    
    // MARK: - Overriden
    
    override var title: String? {
        return day.fullName
    }
    
    override var numberOfRows: Int {
        return day.exercises.count
    }
    
    // MARK: - Internal
    
    func exerciseCellSetup(forRow row: Int) -> ExerciseCellSetup {
        let exercise = self.exercise(atRow: row)
        let todayResults = ExerciseResultsViewSetup(title: NSLocalizedString("Today", comment: ""),
                                                    results: results(forExercise: exercise),
                                                    comment: exercise.comment)
        // TODO: prepare last results
        return ExerciseCellSetup(name: exercise.name,
                                 goal: exercise.goal,
                                 todayResults: todayResults,
                                 lastResults: nil)
    }
    
    // MARK: - Private
    
    private func exercise(atRow row: Int) -> Exercise {
        return day.exercises[row]
    }
    
    private func results(forExercise exercise: Exercise) -> [String] {
        return exercise.sets.map { "\(Int($0.weight)) x \($0.numberOfRepetitions)" }
    }
}
