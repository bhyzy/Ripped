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
    
    typealias ExerciseCellSetup = (name: String,
                                   goal: String)
    
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
        return ExerciseCellSetup(name: exercise.name, goal: exercise.goal)
    }
    
    // MARK: - Private
    
    private func exercise(atRow row: Int) -> Exercise {
        return day.exercises[row]
    }
}
